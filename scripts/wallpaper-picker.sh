
#!/bin/sh

# Prompt user to choose wallpaper type
choice=$(echo -e "Static Wallpaper\nLive Wallpaper" | rofi -dmenu -i -p "Choose Wallpaper Type") 
if [ -z "$choice" ]; then 
    echo "No choice selected. Keeping the current wallpaper." 
    exit 0 
fi

set_static_wallpaper() { 

    # Directory containing static wallpapers
    wallpaper_folder="${HOME}/wallpapers"

    # Get a list of static wallpapers (shortened to filenames)
    files=$(find -L "$wallpaper_folder" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.gif" \))
    if [ -z "$files" ]; then
        echo "No static wallpapers found in $wallpaper_folder"
        exit 1
    fi

    # Display a selection menu with Wofi (show only filenames)
    selected_filename=$(echo "$files" | xargs -I{} basename {} | rofi -dmenu -i -p "Select Static Wallpaper")

    # Exit if no selection is made
    if [ -z "$selected_filename" ]; then
        echo "No wallpaper selected. Keeping the current wallpaper."
        exit 0
    fi

    # Map the selected filename back to its full path
    selected_file=$(find -L "$wallpaper_folder" -type f -name "$selected_filename")

    swww img --resize fit "$selected_file" 
    wal --cols16 -i "$selected_file"

    pywalfox update
    spicetify appply
}

set_live_wallpaper() {

    # Directories containing live wallpapers
    wallpaper_folders=(
        "${HOME}/wallpapers/live"
    )

    # Get a list of live wallpapers (shortened to filenames)
    files=$(find -L "${wallpaper_folders[@]}" -type f \( -iname "*.mp4" -o -iname "*.mkv" -o -iname "*.webm" \))
    if [ -z "$files" ]; then
        echo "No live wallpapers found in the specified folders."
        exit 1
    fi

    # Display a selection menu with Wofi (show only filenames)
    selected_filename=$(echo "$files" | xargs -I{} basename {} | rofi -dmenu -i -p "Select Live Wallpaper")

    # Exit if no selection is made
    if [ -z "$selected_filename" ]; then
        echo "No live wallpaper selected. Keeping the current wallpaper."
        exit 0
    fi

    # Map the selected filename back to its full path
    selected_file=$(find -L "${wallpaper_folders[@]}" -type f -name "$selected_filename")

    # Output name (explicitly set to HDMI-A-1)
    output="HDMI-A-1"

    # Start mpvpaper with the selected wallpaper and specified options
    pkill mpvpaper
    mpvpaper -o "no-audio loop" "$output" "$selected_file"

}

# Execute the appropriate function based on user choice

if [ "$choice" = "Static Wallpaper" ]; then 
    set_static_wallpaper 
elif [ "$choice" = "Live Wallpaper" ]; then 
    set_live_wallpaper 
else 
    echo "Invalid choice. Keeping the current wallpaper." 
    exit 0 
fi
