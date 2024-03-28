#!/usr/bin/env fish

# Default vars
set default_source_dir (pwd)
set default_target_dir ~/.config
set default_directories fish nvim conda tmux wezterm git lazygit starship brew

# Parse command-line options
set source_dir $default_source_dir
set target_dir $default_target_dir
set directories

set count (count $argv)
set i 1
while test $i -le $count
    set arg $argv[$i]
    switch $arg
        case '-s' '--source'
            if test (math "$i + 1") -le $count
                set source_dir $argv[(math "$i + 1")]
                set i (math "$i + 1") # Increment to skip next argument
            end
        case '-t' '--target'
            if test (math "$i + 1") -le $count
                set target_dir $argv[(math "$i + 1")]
                set i (math "$i + 1") # Increment to skip next argument
            end
        case '*'
            set directories $directories $arg
    end
    set i (math "$i + 1")
end

# If no directories were provided, set the defaults
if test (count $directories) -eq 0
    set directories $default_directories
end


# create links
for dir in $directories
    if test -d $source_dir/$dir
        if test -L $target_dir/$dir
            echo "Removing existing symbolic link: $target_dir/$dir"
            rm $target_dir/$dir
        else if test -d $target_dir/$dir
            if test -d $target_dir/$dir.old
                echo "Removing existing backup directory: $target_dir/$dir.old"
                rm -r $target_dir/$dir.old
            end
            echo "Moving existing directory to backup: $target_dir/$dir to $target_dir/$dir.old"
            mv $target_dir/$dir $target_dir/$dir.old
        end
        ln -s $source_dir/$dir $target_dir/$dir
        echo "Created symbolic link for $dir"
    else
        echo "Error: $source_dir/$dir does not exist. Skipping..."
    end
end
