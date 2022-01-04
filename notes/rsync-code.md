

```
rsync -av \
  --exclude="2019-fertility-research" \
  --exclude="node_modules" \
  --exclude="filer_public/" \
  --exclude="venv/" \
  --exclude="dash-audio-live/" \
  ohrstrom@mbp15.local:/Users/ohrstrom/Documents/Code/ \
  ~/code/
```