# Vintage Chests & Trunks: Timber Selection

A *Vintage Story* content mod that adds wood-typed variants for all chests and trunks. Instead of the default oak look, chests and trunks will visually match the specific type of wood they were crafted with.

**Mod ID:** `vintagechestsandtrunks`

---

## 🌟 Features

- **12 Wood Variants:** Supports all vanilla wood types (Oak, Birch, Pine, Redwood, Ebony, Larch, Kapok, Maple, Purpleheart, Walnut, Bald Cypress, and Acacia).
- **Faithful Aesthetics:** Uses custom transparent overlays with a `Normal` blend mode to keep the natural brightness of light woods (like Birch and Larch) while preserving the dark, detailed iron bands and shadows.
- **Vanilla Coexistence:** Does not override or block the default vanilla chest, allowing you to use both side by side.
- **Multilingual:** Translated and localized for English, Portuguese (PT-BR), German, French, Spanish (Spain & LATAM), and Russian.

---

## 🔨 Crafting Recipes

To prevent conflicts with the default game chest recipe (which accepts mixed woods), this mod introduces a modified grid pattern:

### Wood-Typed Chest
Place **Nails** in the **top-center** slot of the grid. All planks must be of the **same wood type**.

```
[ Plank ] [ Nails ] [ Plank ]
[ Plank ] [ Plank ] [ Plank ]
[ Plank ] [ Plank ] [ Plank ]
```
*Note: Crafting with mixed woods or using the default vanilla layout (Nails in the center slot) will still produce the vanilla Wooden Chest.*

### Wood-Typed Trunk
Combine **two identical wood-typed chests** anywhere in the crafting grid (shapeless).

```
[ Typed Chest ] [ Typed Chest ]
```
*Note: Mixing different wood-typed chests will default to crafting a vanilla Wooden Trunk.*

---

## 💾 Installation

1. Place the mod `.zip` archive into your `%APPDATA%/VintagestoryData/Mods/` directory.
2. Start the game.

## 🛠️ Development & Packaging

To compile and package the mod files into a deployable zip, run the PowerShell build script in the root directory:
```powershell
.\build.ps1
```

## 📝 License & Credits
* **Authors:** JimmyJTC & Antigravity
* **License:** This project is licensed under the **GNU General Public License v3.0 (GPLv3)**. See the [LICENSE](LICENSE) file for details.
