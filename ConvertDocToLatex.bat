@echo off
for %%f in (*.docx) do (
    echo Processing file: %%f
    pandoc -s "%%f" -o output.tex
)

