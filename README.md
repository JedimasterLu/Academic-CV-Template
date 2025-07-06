# Academic CV Template

A typst template for graduate school applications with modern looking.

## Demo

![Demo](assets/Figure/thumbnail.png)

## Tutorial

All the contents should be written in the `main.typ` file.

This template has 5 types of blocks defined in `template.typ` in order to display different kinds of information:

1. `caption`
    - This block is the one at the very top of the page. It is used to display your name, contact information, a link to your website, etc.
    - Input: (name, mobile, wechat, email, website, address)
    - You may adjust the metadata in template.typ to change the info type and margins.
2. `capcontent_block`
    - This block has a small caption with 4 informations and a bullet list.
    - Input: (title, location, note, time, content)
    - Enter a bullet list in the content field.
3. `bullet_block`
    - This block is a simple bullet list.
    - Input: (content)
4. `tritable_block`
    - This block is a table with 3 columns.
    - Input: (data)
    - The data should be a list of lists, where each inner list represents a row in the table.
5. `dualtable_block`
    - This block is a table with 2 columns.
    - Input: (data)
    - The data should be a list of lists, where each inner list represents a row in the table.

You may also use the `quartag` to DIY a block with the small caption.

## Quick Start

### Online Editor
1. Open the online editor in the browser: [Typst Editor](https://typst.app/).
2. Use "Start from template" or "Start from GitHub" to open this template. Search for "modern-academic-cv".

### Local Compiler
1. Install the latest Typst CIL.
2. Clone this repo.
3. Open the `main.typ` file in your editor. VSCode with Tinymist extension is recommended.

## TODO
1. Upload to Typst Universe.
2. Add Chinese tutorial.