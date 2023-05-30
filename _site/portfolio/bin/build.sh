# tailwind build
# npx tailwindcss -i css/tailwind.css -o css/compiled/main.css -c tailwind.config.js

# vite build
# rm -rf vite-dist
# npx vite build

# jekyll build
rm -rf _site
JEKYLL_ENV=production bundle exec jekyll build --config _config.yml


# other
# cp -r vite_dist/compiled _site/
