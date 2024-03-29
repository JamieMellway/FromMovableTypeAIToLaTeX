# FromMovableTypeAIToLaTeX
This document is to help go from the Google Docs book generated by MovableType.AI to LaTeX to PDF/epub.

# Tools

The tool I use to convert from Word document to LaTeX is pandoc.  I use the TeXstudio editor with TeXLive to edit the file and generate the PDF.  The tool I use to convert to epub is tex4ebook.  I use Inkscape to edit the paperback and ebook covers.

Get the installers for these tools at:
- https://www.tug.org/texlive/
- https://www.texstudio.org/
- https://pandoc.org/installing.html
- http://binaries.html-tidy.org/ (Used by tex4ebook)
- https://gnuwin32.sourceforge.net/packages/coreutils.htm
- https://inkscape.org/

Add these to your Environment Path if the installers have not:
- C:\texlive\2023\bin
- C:\texlive\2023\bin\windows
- C:\Program Files\tidy 5.8.0\bin
- C:\Program Files\Pandoc\
- C:\Program Files (x86)\GnuWin32\bin

# Edit the LaTeX and Book Covers

1. In app.moveabletype.ai project details page click "Open Doc in New Tab"
2. Select File - > Download -> Microsoft Word (.docx)
3. Create a new folder for the document and copy the docx file there.
4. Copy the files from this repository to that folder.
5. Run ConvertDocToLatex.bat.  This will run pandoc for every .docx file in the folder and create output.tex.
6. Rename output.tex to the title of your project to something without spaces.
7. Delete Everything up to the Preface lines.  Paste in NewHeader.tex to replace it.
8. Edit the title, author, and publisher in the copyright.
9. Do a search (ctrl-f) for "\section{Chapter ".  Delete that and the chapter number and colon.  Replace that with "\chapter{"
10. Do a search for "\section{Epilogue".  Replace that with "\chapter*{" and after that line add \addcontentsline{toc}{chapter}{Epilogue}
11. Hit F3 to skip to the next one.  Replace all ten chapters.
12. Search for "==".  Delete both the starting "==" and ending "==".  Highlight the middle text and hit ctrl-b to add \textbf{  } around the text.
13. Search for "\#\#\#".  Highlight the text and hit ctrl-b to add \textbf{  } around the text.
14. Search for double quote.  Replace the starting double quotes with `` and ending double quotes with ''.
15. Hit F5 to generate PDF.  Note the number of pages in the PDF.
16. Run CreateEpub.bat to generate the epub.
17. Go to https://kdp.amazon.com/cover-calculator to generate template using the page count of the PDF.
18. Open the template in Inkscape and create you cover.  Save to .svg.  Make the template layer invisible and export to PDF when done.
19. Open the "Ebook Cover.svg" in Inkscape.  Copy the cover from the the other .svg file.  Use the resize arrows while holding down ctrl to resize with the same proportions.  Export to .jpg when done.
20. Upload to KDP!


