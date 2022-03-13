#!/bin/bash

echo "Exporting instaled applications..."

distrobox-export --app code
distrobox-export --app dbeaver
distrobox-export --app postman
distrobox-export --app firefox

echo "Applications Exported!"