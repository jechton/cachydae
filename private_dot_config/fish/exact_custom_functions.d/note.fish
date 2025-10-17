function note -d "new unique note in Obsidian"
    echo -e "---\ndate: $(date +%Y-%m-%dT%H:%M)\n---\n$argv" >>$HOME/Obsidian/Vault/$(date +%Y%m%d%H%M).md
end
