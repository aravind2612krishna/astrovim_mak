mkdir -p ~/.config/astronvim_v5
rsync --delete --archive --exclude .git ./ ~/.config/astronvim_v5
