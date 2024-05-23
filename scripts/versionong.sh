# Get the current version from the last Git tag
CURRENT_VERSION=$(git describe --tags --abbrev=0)

# Increment the version (this example increments the patch number)
IFS='.' read -r -a VERSION_PARTS <<< "$CURRENT_VERSION"
PATCH_VERSION=${VERSION_PARTS[2]}
NEW_PATCH_VERSION=$((PATCH_VERSION + 1))
NEW_VERSION="${VERSION_PARTS[0]}.${VERSION_PARTS[1]}.$NEW_PATCH_VERSION"

# Create a new Git tag
git tag -a $NEW_VERSION -m "Release $NEW_VERSION"
git push origin $NEW_VERSION
