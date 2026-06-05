---
name: Paper & Ink
colors:
  surface: '#fbf9f9'
  surface-dim: '#dbdad9'
  surface-bright: '#fbf9f9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f5f3f3'
  surface-container: '#efeded'
  surface-container-high: '#e9e8e7'
  surface-container-highest: '#e3e2e2'
  on-surface: '#1b1c1c'
  on-surface-variant: '#444748'
  inverse-surface: '#303031'
  inverse-on-surface: '#f2f0f0'
  outline: '#747878'
  outline-variant: '#c4c7c7'
  surface-tint: '#5f5e5e'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#1c1b1b'
  on-primary-container: '#858383'
  inverse-primary: '#c8c6c5'
  secondary: '#5d5f5f'
  on-secondary: '#ffffff'
  secondary-container: '#dfe0e0'
  on-secondary-container: '#616363'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#1c1b1a'
  on-tertiary-container: '#868382'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e5e2e1'
  primary-fixed-dim: '#c8c6c5'
  on-primary-fixed: '#1c1b1b'
  on-primary-fixed-variant: '#474746'
  secondary-fixed: '#e2e2e2'
  secondary-fixed-dim: '#c6c6c7'
  on-secondary-fixed: '#1a1c1c'
  on-secondary-fixed-variant: '#454747'
  tertiary-fixed: '#e6e2df'
  tertiary-fixed-dim: '#cac6c4'
  on-tertiary-fixed: '#1c1b1a'
  on-tertiary-fixed-variant: '#484645'
  background: '#fbf9f9'
  on-background: '#1b1c1c'
  surface-variant: '#e3e2e2'
  whatsapp: '#25D366'
typography:
  display-lg:
    fontFamily: Libre Caslon Text
    fontSize: 48px
    fontWeight: '400'
    lineHeight: '1.1'
    letterSpacing: 0.02em
  headline-lg:
    fontFamily: Libre Caslon Text
    fontSize: 32px
    fontWeight: '400'
    lineHeight: '1.2'
  headline-lg-mobile:
    fontFamily: Libre Caslon Text
    fontSize: 24px
    fontWeight: '400'
    lineHeight: '1.2'
  body-lg:
    fontFamily: Hanken Grotesk
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
    letterSpacing: 0.01em
  body-md:
    fontFamily: Hanken Grotesk
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.6'
  label-caps:
    fontFamily: Hanken Grotesk
    fontSize: 12px
    fontWeight: '600'
    lineHeight: '1.2'
    letterSpacing: 0.15em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  unit: 8px
  container-max: 480px
  gutter: 32px
  margin-mobile: 24px
  margin-desktop: 48px
---

## Brand & Style

This design system is rooted in the tactile elegance of high-end stationery. It translates the physical presence of a premium business card into a digital interface — a single-screen experience that never scrolls, mirroring the bounded, self-contained nature of a physical card.

The brand personality is **refined, architectural, and authoritative**. It seeks to evoke quiet confidence and professional precision. By removing decorative elements, the system forces focus onto content and craftsmanship.

**Design Movement: Minimalism**
Strictly minimalist. Layouts are centered to reflect the composition of a physical card. Visual interest is generated through the contrast between stark paper-white surfaces and deep charcoal ink-like typography.

## Site Architecture

- **Single page, 100vh maximum** — no scrolling on mobile or desktop. This is a digital business card.
- **Three locales:** Spanish (es), English (en), Catalan (ca). Language detected automatically from `navigator.language`, with Spanish as fallback.
- **Deployment:** Astro with `@astrojs/cloudflare` adapter, served as a Cloudflare Worker.
- **Framework:** Astro (static-first, SSR via Cloudflare adapter).

## Page Structure (single screen, top to bottom)

```
┌─────────────────────────────────┐
│         ╭──── SC ────╮          │  ← SVG oval, inline
│                                 │
│         SEAL CEADA              │  ← Libre Caslon Text, display-lg
│                                 │
│  [WhatsApp logo] 698 90 78 08   │  ← wa.me link, WhatsApp green logo
│  Escríbenos por WhatsApp        │  ← CTA label, label-caps, translated
│                                 │
│  ┌───────┐ ┌───────┐ ┌───────┐  │
│  │ icon  │ │ icon  │ │ icon  │  │  ← Minimalist line-drawing, no text
│  │       │ │       │ │       │  │
│  MONTAJE   REPARA.   PINTURA    │  ← label-caps
│  descriptor descriptor desc.   │  ← body-sm, translated
│  └───────┘ └───────┘ └───────┘  │
└─────────────────────────────────┘
```

## Colors

The palette is monochromatic and high-contrast, mimicking the relationship between paper and ink.

- **Primary (Charcoal `#1b1c1c`):** Brand identity, primary headings, interactive text. A deep warm grey, not true black.
- **Surface (Paper White `#fbf9f9`):** The foundational background — a warm, slightly off-white canvas.
- **Neutral (Slate `#747878`):** Secondary information, metadata, ghost borders.
- **WhatsApp Green (`#25D366`):** Used exclusively for the WhatsApp logo and its link element. The sole accent color.

No other accent colors. Hierarchy established through weight and scale, not hue.

## Typography

A historical high-contrast serif for branding, paired with a hyper-modern sans-serif for utility.

- **Libre Caslon Text:** Brand name "SEAL CEADA" and the SC oval. Literary and established.
- **Hanken Grotesk:** All functional text — service names, descriptors, WhatsApp CTA. Clarity and neutral tone.

**Special Treatment:** Service names use `label-caps` (0.15em letter-spacing, 600 weight). Descriptors use a smaller `label-caps` variant at reduced opacity.

## Services

Three services, each with:
1. A minimalist abstract line-drawing icon (PNG with transparent background, no text)
2. A service name in `label-caps`
3. A short translated descriptor beneath it

| Service | es | en | ca |
|---|---|---|---|
| MONTAJE | Instalación de precisión | Precision installation | Instal·lació de precisió |
| REPARACIONES | Diagnóstico y arreglo experto | Expert fault diagnosis & repair | Diagnòstic i reparació expert |
| PINTURA | Acabado fino de interiores | Fine-finish interior painting | Acabat fi d'interiors |

## WhatsApp Block

- **Number:** +34 698 90 78 08 (formatted as `698 90 78 08`)
- **Link:** `https://wa.me/34698907808`
- **Logo:** Official WhatsApp SVG mark in `#25D366`
- **CTA phrase (translated):**
  - es: *Escríbenos por WhatsApp*
  - en: *Message us on WhatsApp*
  - ca: *Escriu-nos per WhatsApp*

## Logo

The SC oval is rendered as inline SVG:
- Thin-stroked (`stroke-width: 1`) horizontal ellipse
- "SC" text in Libre Caslon Text inside the ellipse
- Same charcoal `#1b1c1c` stroke and fill as all other text
- Never accompanied by complex icons or decorative elements

## Layout & Spacing

- **Mobile-first, 100vh locked.** Everything fits in one screen.
- 8px spacing unit throughout.
- Centered composition — horizontal and vertical — echoing a card held in hand.
- Services row: three equal-width columns, icon above label above descriptor.
- **Container max-width:** 480px (card-like proportions on desktop).

## Elevation & Depth

No shadows, blurs, or gradients. Flat tonal layering only.

- **Ghost Border:** 1px `outline-variant` borders to define service card boundaries if needed.
- **Active States:** Typography weight shift or underline on hover, never shadow.
- **Service Icons:** Black line art on transparent backgrounds. They sit on the paper-white surface naturally.

## Shapes

Sharp and architectural, mirroring cut business card edges.

- **The Oval:** The SC logo — thin-stroked horizontal oval, the primary unique brand shape.
- **Containers:** 0.25rem radius maximum.
- **Service cards:** Borderless by default; ghost border only if visual separation is needed.

## Internationalization

Locale detection order:
1. `navigator.language` (browser preferred language)
2. Match against `['es', 'en', 'ca']`
3. Fallback: `es`

All string content lives in a single translations object. No external i18n library required given the minimal content.
