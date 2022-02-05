# Local HedgeDoc
[HedgeDoc Github](https://github.com/hedgedoc/hedgedoc)

## About
This collection of scripts starts HedgeDoc on Docker and uses cron to output a backup dump every 15 minutes.
By automatically loading this backup dump when you start HedgeDoc, you can open your notes in the most recent state.

You can edit the same HedgeDoc documents on different devices by sharing the entire folder to Google Drive, etc.

However, please do not run HedgeDoc on different devices at the same time!
There is a possibility of backup data collision.
## Require
- Docker
- PowerShell

## How To Use
### Lanch
1. Lanch `run.ps1`
   - On Windows, doubleclick `run.bat` is easier.
2. Your browser will lanch.
2. Enjoy!

### Close
This operation is optional, but you should do it if you want to back up your data in an up-to-date state (and share it with other devices via Google Drive, etc.).
1. Lanch `shutdown.ps1`
   - On Windows, doubleclick `shutdown.bat` is easier.
   - this script will **NOT** shutdown your computer. Don't worry.
2. Finish!

