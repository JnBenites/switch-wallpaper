## switch-wallpaper
This script allows you to switch between two different wallpapers and was designed for use with sxhkd.

| Dependencies |  | |
| ------ | ------ | ------ |
|feh|wallpaper1|wallpaper2|

[![Recurso-1-animales.png](https://i.postimg.cc/6QG0WLvR/Recurso-1-animales.png)](https://postimg.cc/DWns5G5y)

## How to use
- clone this repository
```
git clone https://github.com/JnBenites/switch-wallpaper
```
- enter the switch-wallpaper folder
```
cd switch-wallpaper
```
- give execution permission to the script
```
chmod +x ./switch-wallpaper.sh
```
- create folder to store wallpapers
```
mkdir $HOME/.config/wallpaper
```
- add two images that have the same extension wallpaper1 and wallpaper2 to the .wallpaper folder
```
wallpaper1.png, wallpaper2.png
```
- define the wallpapers folder and images extension in switch-wallpaper.sh
```
image_location=$HOME/.config/wallpaper
image_extension=png
```
- test the script
```
./switch-wallpaper.sh
```
## Example of use with sxhkd

>alt + w

>$HOME/.config/scripts/switch-wallpaper.sh
