

```
rsync -av \
  --exclude="/playground/*" \
  --exclude="2019-fertility-research" \
  --exclude=".DS_Store" \
  --exclude="node_modules" \
  --exclude="filer_public/" \
  --exclude="data/*" \
  --exclude="venv/" \
  --exclude="dash-audio-live/" \
  ohrstrom@mbp14.local:/Users/ohrstrom/Documents/Code/ \
  ~/code/
```