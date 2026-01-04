#
# Distrobox
#
# Distrobox is a plugin to indicate if your shell is running within a distrobox.
# Link: https://github.com/pyte1/spaceship-distrobox

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_DISTROBOX_SHOW="${SPACESHIP_DISTROBOX_SHOW=true}"  # Show section by default
SPACESHIP_DISTROBOX_ASYNC="${SPACESHIP_DISTROBOX_ASYNC=false}"  # Async is not needed for Distrobox
SPACESHIP_DISTROBOX_PREFIX="${SPACESHIP_DISTROBOX_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"  # Default prefix
SPACESHIP_DISTROBOX_SUFFIX="${SPACESHIP_DISTROBOX_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"  # Default suffix
SPACESHIP_DISTROBOX_SYMBOL="${SPACESHIP_DISTROBOX_SYMBOL="  "}"  # Symbol for Distrobox
SPACESHIP_DISTROBOX_COLOR="${SPACESHIP_DISTROBOX_COLOR="yellow"}"  # Section color (yellow by default)

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

spaceship_distrobox() {
  # If SPACESHIP_DISTROBOX_SHOW is false, don't show the Distrobox section
  [[ $SPACESHIP_DISTROBOX_SHOW == false ]] && return

  # Check if inside Distrobox otherwise return
  if [[ -z "$CONTAINER_ID" ]]; then
    return  
  fi

  # Get the container name (CONTAINER_ID)
  local container_name="($CONTAINER_ID)"

  # Display the Distrobox section
  spaceship::section::v4 \
    --color "$SPACESHIP_DISTROBOX_COLOR" \
    --prefix "$SPACESHIP_DISTROBOX_PREFIX" \
    --suffix "$SPACESHIP_DISTROBOX_SUFFIX" \
    --symbol "$SPACESHIP_DISTROBOX_SYMBOL" \
    "$container_name "
}
