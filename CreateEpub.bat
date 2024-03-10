@echo off
for %%f in (*.tex) do (
    echo Processing file: %%f
    tex4ebook -f epub -c htlatex/enumerate-fix.cfg %%f
)

