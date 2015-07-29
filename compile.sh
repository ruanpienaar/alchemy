#!/bin/bash
for FILE in `find . -name "*.ex"`; do
  elixirc $FILE && continue
done
