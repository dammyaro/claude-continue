#!/bin/bash

# Continue Commands - Installation Script
# https://github.com/dammyaro/claude-continue-commands

set -e

echo "🚀 Continue Commands Installer"
echo "================================"
echo ""

# Function to install commands
install_commands() {
    local target_dir="$1"
    local scope="$2"
    
    echo "📁 Installing to: $target_dir ($scope)"
    
    # Create directory if it doesn't exist
    mkdir -p "$target_dir"
    
    # Copy commands
    cp commands/continue.md "$target_dir/"
    cp commands/continue-pr.md "$target_dir/"
    cp commands/morning.md "$target_dir/"
    
    echo "✅ Installed 3 commands:"
    echo "   - /continue"
    echo "   - /continue-pr"
    echo "   - /morning"
    echo ""
}

# Check if we're in the right directory
if [ ! -d "commands" ]; then
    echo "❌ Error: commands/ directory not found"
    echo "Please run this script from the claude-continue-commands directory"
    exit 1
fi

echo "Choose installation type:"
echo ""
echo "1) Personal (all projects) - ~/.claude/commands/"
echo "2) Project-specific - ./.claude/commands/"
echo "3) Both"
echo ""
read -p "Enter choice (1-3): " choice

case $choice in
    1)
        install_commands "$HOME/.claude/commands" "personal"
        echo "🎉 Done! Commands available in all your projects."
        ;;
    2)
        install_commands "./.claude/commands" "project"
        echo "🎉 Done! Commands available in this project."
        echo ""
        echo "💡 Tip: Commit .claude/commands/ to share with your team:"
        echo "   git add .claude/commands/"
        echo "   git commit -m 'feat: add continue commands'"
        ;;
    3)
        install_commands "$HOME/.claude/commands" "personal"
        install_commands "./.claude/commands" "project"
        echo "🎉 Done! Commands available everywhere."
        ;;
    *)
        echo "❌ Invalid choice. Exiting."
        exit 1
        ;;
esac

echo ""
echo "📚 Usage:"
echo "   /continue              # Resume work"
echo "   /continue-pr           # Continue PR work"
echo "   /morning               # Daily catch-up"
echo ""
echo "📖 Read README.md for more examples and customization tips"
echo ""
echo "⭐ If you find this useful, star the repo!"
echo "   https://github.com/dammyaro/claude-continue-commands"
