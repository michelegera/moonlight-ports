# Color Usage Guide

This document explains how each color in the Moonlight palette is used across different syntax elements.

## Core Palette

| Color Name | Hex Code | RGB | Usage |
|------------|----------|-----|--------|
| Background | `#212337` | 33, 35, 55 | Main editor/terminal background |
| Foreground | `#c8d3f5` | 200, 211, 245 | Default text color |
| Selection | `#444a73` | 68, 74, 115 | Selected text background |
| Current Line | `#2f334d` | 47, 51, 77 | Active line highlight |
| Comment | `#7a88cf` | 122, 136, 207 | Comments, muted text |

## Syntax Colors

### Red (`#ff757f`)
- Errors
- Invalid syntax
- Deletion markers in diffs

### Orange (`#ff995e`)
- Constants
- Numbers
- Boolean values

### Yellow (`#ffc777`)
- Variables
- Parameters
- Attributes
- Tag attributes in HTML/XML

### Green (`#c3e88d`)
- Strings
- String literals
- Addition markers in diffs

### Cyan (`#86e1fc`)
- Properties
- Object keys
- Punctuation
- Brackets

### Blue (`#82aaff`)
- Functions
- Method declarations
- Primary accent color
- Cursor

### Sky Blue (`#65bcff`)
- Keywords (`if`, `for`, `class`, etc.)
- Built-in functions
- Type names

### Purple (`#c099ff`)
- Operators (`+`, `-`, `=`, etc.)
- Control flow keywords
- Storage modifiers

### Pink/Magenta (`#fca7ea`)
- HTML/XML tags
- Special characters
- Escape sequences
- Macros

## Semantic Token Mapping

For languages with semantic highlighting (TypeScript, Python, etc.):

- **function**: Blue (`#82aaff`)
- **method**: Sky Blue (`#65bcff`)
- **variable.builtin**: Yellow (`#ffc777`)
- **property**: Cyan (`#86e1fc`)
- **class**: Sky Blue (`#65bcff`)
- **parameter**: Yellow (`#ffc777`)

## Example Code Coloring

```typescript
// Comment (muted blue-gray)
import { useState } from 'react';  // keyword: sky blue, string: green

function calculateTotal(items: number[]): number {  // function: blue, type: sky blue
  const TAX_RATE = 0.1;  // const: purple, constant: orange, number: orange
  let total = 0;  // keyword: sky blue, variable: yellow, number: orange
  
  for (const item of items) {  // keywords: sky blue, variable: yellow
    total += item;  // operator: purple
  }
  
  return total * (1 + TAX_RATE);  // keyword: sky blue, operator: purple
}

const message = `Total: ${calculateTotal([1, 2, 3])}`;  // string: green, function: blue
```

## Terminal Colors (ANSI)

The 16 ANSI colors for terminals (Ghostty, etc.):

| ANSI | Normal | Bright | Color |
|------|--------|--------|-------|
| Black | `#191a2a` | `#7a88cf` | Dark background / Comments |
| Red | `#ff757f` | `#ff757f` | Errors |
| Green | `#c3e88d` | `#c3e88d` | Success / Strings |
| Yellow | `#ffc777` | `#ffc777` | Warnings / Variables |
| Blue | `#82aaff` | `#65bcff` | Functions / Keywords |
| Magenta | `#c099ff` | `#fca7ea` | Operators / Tags |
| Cyan | `#86e1fc` | `#86e1fc` | Properties |
| White | `#c8d3f5` | `#c8d3f5` | Default foreground |

## UI Elements

### Status Bars
- Background: `#191a2a` (darker than editor)
- Active element: `#82aaff` (blue accent)
- Inactive element: `#2f334d` (muted)

### Borders
- Default: `#222436`
- Active: `#82aaff`

### Gutter
- Background: `#191a2a`
- Line numbers: `#3b4261`
- Active line number: `#ffc777` (yellow)

## Git Integration

- **Added lines**: `#c3e88d` (green)
- **Modified lines**: `#ffc777` (yellow)
- **Deleted lines**: `#ff757f` (red)
- **Current branch**: `#fca7ea` (pink)
- **Upstream**: `#86e1fc` (cyan)

## Accessibility Notes

The Moonlight theme maintains good contrast ratios:
- Foreground on background: 8.3:1 (AAA)
- Comments on background: 4.9:1 (AA)
- Selection has clear visual distinction

All color combinations have been chosen to be distinguishable for most forms of color vision deficiency.
