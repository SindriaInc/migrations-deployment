#!/usr/bin/env bash

CONTAINER_NAME=example-migrations

# WP
#docker exec -it $CONTAINER_NAME su sindria -c "php /var/www/app/artisan iseed wp_options,wp_commentmeta,wp_comments,wp_links,wp_postmeta,wp_posts,wp_termmeta,wp_term_relationships,wp_terms,wp_term_taxonomy,wp_usermeta,wp_users"

# Directus
docker exec -it $CONTAINER_NAME su sindria -c "php /var/www/app/artisan iseed directus_activity,directus_collection_presets,directus_collections,directus_fields,directus_files,directus_folders,directus_migrations,directus_permissions,directus_relations,directus_revisions,directus_roles,directus_settings,directus_user_sessions,directus_users,directus_webhooks"

# Custom
#docker exec -it $CONTAINER_NAME su sindria -c "php /var/www/app/artisan iseed custom_table1,custom_table2,custom_table3"
