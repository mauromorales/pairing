# SSH Keys

Pivots use [encrypted drives][1] to temporarily add their SSH Keys in any machiney they work. Follow these instructions to create such an encrypted drive for your SSH Keys using Linux.

## Setup the drive

1. Reformat the drive using `disks`

    ![format encrypted usb](format_encrypted_usb.png)

2. Add your keys to the drive

    * Create new keys

        ```
	ssh-keygen -f /run/media/`whoami`/YOUR_KEY/id_rsa -C "John Doe"
        ```
    * Import existing keys

        ```
	mv /path/to/your/keys /run/media/`whoami`/YOUR_KEY
        ```
3. Copy the load script into your drive

    ```
    cp load /run/media/`whoami`/YOUR_KEY
    ```

## Using the drive

Call the `load` script with the number of hours that you want to keep your keys in the system. If you don't give it a number of hours it will load them for one hour.

```
/run/media/cpi/LinuxKey/load 3
```

[1]: http://tammersaleh.com/posts/building-an-encrypted-usb-drive-for-your-ssh-keys-in-os-x/
