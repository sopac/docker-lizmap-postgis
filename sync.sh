docker cp logo.png dockerlizmappostgis_lizmap_1:/var/www/websig/lizmap/www/themes/default/css/img/
docker cp logo.png dockerlizmappostgis_lizmap_1:/var/www/websig/lizmap/www/css/img/
docker cp logo_footer.png dockerlizmappostgis_lizmap_1:/var/www/websig/lizmap/www/themes/default/css/img/

sudo chmod 777 -R projects/*

# Add repository
LIZMAP_CONFIG=lizmap_var/config/lizmapConfig.ini.php
echo "[repository:fiji]" | sudo tee -a $LIZMAP_CONFIG
echo "label=Fiji Islands Floods and Tropical Depression December 2016" | sudo tee -a $LIZMAP_CONFIG
echo "path="/home/"" | sudo tee -a $LIZMAP_CONFIG
echo "allowUserDefinedThemes=1" | sudo tee -a $LIZMAP_CONFIG

#Permissions
sudo cat load_permissions.sql | sudo sqlite3 lizmap_var/db/jauth.db

