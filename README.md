# UE Card Command

Simple website to create order commands for UberEats ACOs. Fill in the forms (or paste ticket text to auto-fill), then copy the generated slash command into Discord.

No backend, no sign-in—just open the HTML files in a browser.

---

## What it does

- **Assist** — Build `/assist order` commands with group link, card details, name, address, and delivery notes.
- **New Order** — Build `/order uber` commands with group link, email, card details, and overrides.
- **Reorder** — Build `/reorder uber` commands with group link, email, and delivery options.

All commands are formatted for use with UberEats ACO (order) flows in Discord.

Each page validates inputs (link, email, card number, CVV) and outputs a single command you can copy and paste into Discord.

---

## How to use

1. **Open the app**  
   - Open `index.html` in your browser (double-click or drag into Chrome/Firefox/Edge), or serve the folder locally (e.g. `python -m http.server 8000` and go to `http://localhost:8000`).

2. **Pick a form**  
   - **New Order** — full order with card and email  
   - **Reorder** — reorder with email only  
   - **Assist** — assist command with card and overrides  

3. **Fill the form (or paste & parse)**  
   - Enter the group cart link and any required fields (email, card, etc.).  
   - Or paste ticket/form text into “Paste Form Here” and click **Parse** to fill Group Link, Name, Address Line 2, and Delivery Notes from the text.

4. **Copy the command**  
   - The “Command Output” (or “Copy”) box updates as you type. Click **Copy** to copy the line to your clipboard, then paste it into Discord.

---

## Pages

| Page        | File         | Output style              | Main fields                                      |
|------------|--------------|---------------------------|--------------------------------------------------|
| New Order  | `order.html` | `/order uber order_details:...` | Group link, email, card, CVV, provider, overrides |
| Reorder    | `reorder.html` | `/reorder uber order_details:...` | Group link, email, name, address, notes          |
| Assist     | `assist.html` | `/assist order order_details:...` | Group link, card, CVV, provider, name, address, notes |

Card provider (AG, TG, HG, Cap1) sets expiry and ZIP used in the command. “Identifier” can be **Select** or **Any** depending on your bot.

---

## Requirements

- A modern browser (Chrome, Firefox, Edge, Safari).
- No Node, no build step, no server required (optional local server if you prefer a URL).

---

## Project structure

```
UE-card-command/
├── index.html          # Home: links to New Order / Reorder
├── order.html          # New order command form
├── reorder.html        # Reorder command form
├── assist.html         # Assist command form
├── styles.css          # Shared styles
├── images/             # Favicon and assets
├── InterDisplay-Medium-29.ttf
└── README.md
```

---

## Tips

- **Leave at door** — Check the box or include “leave at door” (or similar) in delivery notes; the form may auto-check it when you parse.
- **Name format** — If you paste “Last, First”, the parser converts it to “First Last”.
- **Validation** — Group link must be a valid URL; card 16 digits; CVV 3 digits; email must look valid. Errors show in red next to the field.
