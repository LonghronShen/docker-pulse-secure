#!/bin/bash

echo "Installing marha.VcXsrv using WinGet..."
echo "The installation will start in 10 seconds."
echo "Remeber to enable 'Allow Public Access' and set Display number as 0."

read -t 10 -n 1 -p "Ready to install marha.VcXsrv (y/n)? " answer
if [[ -z "$answer" ]]; then
    winget install marha.VcXsrv
fi