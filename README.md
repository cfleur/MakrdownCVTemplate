# CV Template (LaTeX + Markdown) — Example: Alan Turing

This repository provides a clean, customizable CV/resume template using **Markdown** and **LaTeX**, rendered via [Pandoc](https://pandoc.org/).

Use this project as a starting point for your own CV — just edit the Markdown file!

---

## How It Works

Write your CV in simple `cv.md` (Markdown), and render it to a polished PDF using a custom LaTeX template.

To generate the PDF:
```
    pandoc cv.md --template=template-cv.tex -o cv.pdf
```

---

## Files

- `cv.md` — Your CV content (edit this)
- `template-cv.tex` — Custom LaTeX template that maps the CV content to the document layout
- `*.cls` — Custom LaTeX document class files that define the structure and semantics, such as section formatting, fonts, custom commands, and packages.
- `cv.pdf` — Output example (Alan Turing's CV)
- `README.md` — Repo documentation

### Class files

`.cls` files can be switched to change the look and feel of the compiled CV.
To use them, put the file name (without extension) in the `\documentclass{}` field in `template-cv.tex`.
For example, to use the "seav" class, the first line in `template-cv.tex` should be the following:
```
\documentclass{seav}
```

> Perhaps you are interested to expand this repo by writing your own class file!
> Check out the [Contribute](#contribute) section.

---

## Getting Started

1. **Install Pandoc**  

2. **Install a LaTeX distribution**  

3. **Render the CV**

    From your terminal, run:

        pandoc cv.md --template=template-cv.tex -o cv.pdf

---

## Customization

- Edit `cv.md` with your own information
- Tweak `template-cv.tex` to change content mapping, spacing, and icon use
- Tweak `template-cv.cls` to update custom layout and styling commands and packages

### Language settings

You can set your babel package options as a directive in `cv.md`.
For example:
```
babeloptions: "spanish,es-tabla"
```

or

```
babeloptions: "british"
```


### Formatting CV entries

For right-aligned dates in each job entry, you can use the following custom command in `cv.md`:

```
\cvjobtitle{Job Title}{Company Name, Location}{Date start--Date end}
```

> Hint: `\cvjobtitle` and other custom commands are editable in `template-cv.cls`.

---

## Example: Alan Turing

This template includes a fictional CV for **Alan Turing**, showing how to structure professional experience, education, skills, and achievements.

---

## Why Markdown?

- Simple and readable
- No LaTeX knowledge required for content editing
- Perfect for versioning with Git

---

## License

This project is MIT licensed.  
Feel free to use, adapt, and share it for personal or professional use.

---

## Contribute

Have suggestions? Want to improve the template?  
Pull requests and issues are welcome.

If you would like to contribute to the template and use the repo for your own CV we recommend this setup:
- use the `private/` folder for your own content, like `cv.md`, `cv.pdf`
- use `pandoc private/cv.md --template=template-cv.tex -o private/cv.pdf` to compile your own CV
- if you want to tweak for your own needs `template-cv.tex`, also put it in the `private` folder and symlink the `.cls` file there as well

This keeps the template files free from your personal content while developing.

### Creating a new class file

The repo is designed so that the `template-cv.tex` and `cv.md` files work with all `.cls` files.
If you create a new document class, make sure it works with the existing files in this repo.
