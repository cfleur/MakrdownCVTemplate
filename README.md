# CV Template (LaTeX + Markdown) — Example: Alan Turing

This repository provides a clean, customizable CV/resume template using **Markdown** and **LaTeX**, rendered via [Pandoc](https://pandoc.org/).

Use this project as a starting point for your own CV — just edit the Markdown file!

---

## How It Works

Write your CV in simple `cv.md` (Markdown), and render it to a polished PDF using a custom LaTeX template.

To generate the PDF:

    pandoc cv.md --template=template-cv.tex -o cv.pdf

---

## Files

- `cv.md` — Your CV content (edit this)
- `template-cv.tex` — Custom LaTeX template for styling
- `cv.pdf` — Output example (Alan Turing's CV)
- `README.md` — Repo documentation

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
- Tweak `template-cv.tex` to change layout, fonts, spacing, or icons

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

> Hint: `\cvjobtitle` and other custom commands are editable in `template-cv.tex`.

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
