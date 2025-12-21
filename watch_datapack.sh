#USE chmod +x watch_datapack.sh
#FOR COMMANDS
# USE ./watch_datapack.sh


# Paths
PROJECT="/home/trent/Desktop/Datapacks/Test"
WORLD="/home/trent/.local/share/PrismLauncher/instances/1.21.10/minecraft/saves/Data Test"

# Step 1: Make sure Bolt plugin is installed
echo "Ensuring Bolt plugin is installed..."
pipx inject beet bolt 2>/dev/null || echo "Bolt already installed or pipx error"

# Step 2: Navigate to your project folder
cd "$PROJECT" || { echo "Project folder not found"; exit 1; }

# Step 3: Link the datapack to your Minecraft world
echo "Linking datapack to Minecraft world..."
beet link "$WORLD"

# Step 4: Start beet in watch mode to rebuild on changes
echo "Starting Beet in watch mode..."
beet watch
