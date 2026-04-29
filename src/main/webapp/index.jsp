<!DOCTYPE html>
<html lang="en" data-theme="dark">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Michael Jackson Visual Tribute</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400;600;700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
  <style>
    :root {
      --text-xs: clamp(0.75rem, 0.7rem + 0.25vw, 0.875rem);
      --text-sm: clamp(0.875rem, 0.8rem + 0.35vw, 1rem);
      --text-base: clamp(1rem, 0.95rem + 0.25vw, 1.125rem);
      --text-lg: clamp(1.125rem, 1rem + 0.75vw, 1.5rem);
      --text-xl: clamp(1.5rem, 1.2rem + 1.25vw, 2.25rem);
      --text-2xl: clamp(2rem, 1.2rem + 2.5vw, 3.5rem);
      --text-hero: clamp(3rem, 0.5rem + 7vw, 7rem);
      --space-1: 0.25rem;
      --space-2: 0.5rem;
      --space-3: 0.75rem;
      --space-4: 1rem;
      --space-6: 1.5rem;
      --space-8: 2rem;
      --space-10: 2.5rem;
      --space-12: 3rem;
      --space-16: 4rem;
      --space-24: 6rem;
      --radius-sm: 0.5rem;
      --radius-md: 0.9rem;
      --radius-lg: 1.4rem;
      --radius-xl: 2rem;
      --shadow-lg: 0 20px 60px rgba(0,0,0,.35);
      --shadow-sm: 0 10px 30px rgba(0,0,0,.18);
      --font-display: 'Cinzel', Georgia, serif;
      --font-body: 'Inter', system-ui, sans-serif;
      --color-bg: #0a0a0f;
      --color-surface: rgba(255,255,255,0.06);
      --color-surface-2: rgba(255,255,255,0.1);
      --color-border: rgba(255,255,255,0.12);
      --color-text: #f6f2eb;
      --color-text-muted: #c6c0b7;
      --color-primary: #d4a64f;
      --color-primary-2: #7c5cff;
      --color-highlight: #ffffff;
    }
    * { box-sizing: border-box; margin: 0; padding: 0; }
    html { scroll-behavior: smooth; }
    body {
      min-height: 100vh;
      font-family: var(--font-body);
      font-size: var(--text-base);
      color: var(--color-text);
      background:
        radial-gradient(circle at top left, rgba(212,166,79,.18), transparent 28%),
        radial-gradient(circle at 80% 20%, rgba(124,92,255,.15), transparent 25%),
        linear-gradient(180deg, #09090d 0%, #101019 45%, #0a0a0f 100%);
      line-height: 1.6;
    }
    img { display: block; max-width: 100%; height: auto; }
    a { color: inherit; text-decoration: none; }
    .container { width: min(1180px, calc(100% - 2rem)); margin: 0 auto; }
    .skip-link {
      position: absolute; left: -9999px; top: auto;
    }
    .skip-link:focus {
      left: 1rem; top: 1rem; background: #fff; color: #000; padding: .75rem 1rem; z-index: 999;
    }
    header {
      position: sticky; top: 0; z-index: 10;
      backdrop-filter: blur(14px);
      background: rgba(10,10,15,.55);
      border-bottom: 1px solid var(--color-border);
    }
    .nav {
      display: flex; align-items: center; justify-content: space-between;
      padding: var(--space-4) 0;
      gap: var(--space-4);
    }
    .brand { display: flex; align-items: center; gap: .9rem; }
    .brand-mark {
      width: 44px; height: 44px; border-radius: 50%;
      display: grid; place-items: center;
      color: var(--color-primary);
      background: linear-gradient(145deg, rgba(212,166,79,.18), rgba(255,255,255,.06));
      border: 1px solid rgba(212,166,79,.35);
      box-shadow: inset 0 0 20px rgba(212,166,79,.08);
    }
    .brand-name {
      font-family: var(--font-display);
      font-size: var(--text-lg);
      letter-spacing: .08em;
      text-transform: uppercase;
    }
    .nav-links { display: flex; gap: 1rem; color: var(--color-text-muted); }
    .nav-links a:hover, .nav-links a:focus-visible { color: var(--color-primary); }
    .hero {
      padding: clamp(4rem, 10vw, 8rem) 0 clamp(3rem, 8vw, 6rem);
    }
    .hero-grid {
      display: grid;
      grid-template-columns: 1.1fr .9fr;
      gap: var(--space-10);
      align-items: center;
    }
    .eyebrow {
      display: inline-flex; align-items: center; gap: .6rem;
      padding: .55rem .9rem; border-radius: 999px;
      background: rgba(255,255,255,.06); border: 1px solid var(--color-border);
      color: var(--color-primary); font-size: var(--text-sm); margin-bottom: var(--space-6);
    }
    h1 {
      font-family: var(--font-display);
      font-size: var(--text-hero);
      line-height: .92;
      letter-spacing: .02em;
      max-width: 10ch;
      text-shadow: 0 8px 40px rgba(0,0,0,.35);
    }
    .hero p {
      margin-top: var(--space-6);
      max-width: 58ch;
      color: var(--color-text-muted);
    }
    .hero-actions { display: flex; flex-wrap: wrap; gap: 1rem; margin-top: var(--space-8); }
    .btn {
      min-height: 48px; padding: .95rem 1.25rem; border-radius: 999px;
      display: inline-flex; align-items: center; justify-content: center; gap: .6rem;
      border: 1px solid transparent; font-weight: 600;
      transition: transform .25s ease, background .25s ease, border-color .25s ease;
    }
    .btn:hover, .btn:focus-visible { transform: translateY(-2px); }
    .btn-primary {
      background: linear-gradient(135deg, var(--color-primary), #f0cd87);
      color: #111;
      box-shadow: 0 14px 28px rgba(212,166,79,.25);
    }
    .btn-secondary {
      background: rgba(255,255,255,.05); border-color: var(--color-border);
      color: var(--color-text);
    }
    .hero-card {
      position: relative;
      border-radius: var(--radius-xl);
      overflow: hidden;
      min-height: 580px;
      background: rgba(255,255,255,.05);
      border: 1px solid var(--color-border);
      box-shadow: var(--shadow-lg);
    }
    .hero-card img {
      width: 100%; height: 100%; object-fit: cover;
      filter: saturate(1.05) contrast(1.05);
    }
    .hero-overlay {
      position: absolute; inset: 0;
      background: linear-gradient(180deg, rgba(0,0,0,.08), rgba(0,0,0,.7));
      display: flex; align-items: end;
      padding: var(--space-8);
    }
    .hero-overlay div {
      padding: var(--space-4) var(--space-4);
      border-radius: var(--radius-lg);
      background: rgba(0,0,0,.34);
      border: 1px solid rgba(255,255,255,.12);
      backdrop-filter: blur(8px);
    }
    section { padding: clamp(3.5rem, 7vw, 6rem) 0; }
    .section-head { margin-bottom: var(--space-8); }
    .section-head h2 {
      font-family: var(--font-display);
      font-size: var(--text-2xl);
      margin-bottom: .75rem;
    }
    .section-head p { color: var(--color-text-muted); max-width: 60ch; }
    .stats {
      display: grid; grid-template-columns: repeat(3, 1fr); gap: var(--space-6);
    }
    .stat {
      padding: var(--space-8);
      border-radius: var(--radius-lg);
      background: linear-gradient(180deg, rgba(255,255,255,.06), rgba(255,255,255,.03));
      border: 1px solid var(--color-border);
      box-shadow: var(--shadow-sm);
    }
    .stat span {
      font-size: var(--text-sm);
      text-transform: uppercase;
      letter-spacing: .12em;
      color: var(--color-text-muted);
    }
    .stat strong {
      display: block; margin-top: .6rem;
      font-size: var(--text-xl); color: var(--color-primary);
    }
    .gallery {
      display: grid;
      grid-template-columns: 1.15fr .85fr .85fr;
      gap: var(--space-6);
    }
    .card {
      position: relative;
      overflow: hidden;
      min-height: 320px;
      border-radius: 1.6rem;
      background: rgba(255,255,255,.05);
      border: 1px solid var(--color-border);
      box-shadow: var(--shadow-sm);
      isolation: isolate;
    }
    .card.tall { min-height: 660px; }
    .card img {
      position: absolute; inset: 0;
      width: 100%; height: 100%; object-fit: cover;
      transition: transform .7s ease;
    }
    .card:hover img, .card:focus-within img { transform: scale(1.05); }
    .card::after {
      content: "";
      position: absolute; inset: 0;
      background: linear-gradient(180deg, rgba(0,0,0,.04), rgba(0,0,0,.72));
      z-index: 0;
    }
    .card-content {
      position: absolute; inset: auto 0 0 0;
      padding: var(--space-6);
      z-index: 1;
    }
    .card-content h3 {
      font-family: var(--font-display);
      font-size: var(--text-xl);
      margin-bottom: .45rem;
    }
    .card-content p { color: #e5ddd0; font-size: var(--text-sm); }
    .quote {
      display: grid;
      grid-template-columns: .9fr 1.1fr;
      gap: var(--space-8);
      align-items: center;
      padding: var(--space-8);
      border-radius: var(--radius-xl);
      background: linear-gradient(145deg, rgba(255,255,255,.06), rgba(255,255,255,.02));
      border: 1px solid var(--color-border);
    }
    blockquote {
      font-family: var(--font-display);
      font-size: var(--text-2xl);
      line-height: 1.2;
      color: var(--color-highlight);
    }
    .quote p { color: var(--color-text-muted); }
    footer {
      padding: var(--space-10) 0 var(--space-16);
      color: var(--color-text-muted);
    }
    .footer-box {
      padding-top: var(--space-6);
      border-top: 1px solid var(--color-border);
      display: flex; justify-content: space-between; gap: 1rem; flex-wrap: wrap;
    }
    @media (max-width: 960px) {
      .hero-grid, .gallery, .quote, .stats {
        grid-template-columns: 1fr;
      }
      .hero-card { min-height: 420px; order: -1; }
      .card.tall { min-height: 380px; }
      .nav-links { display: none; }
      h1 { max-width: 100%; }
    }
    @media (max-width: 640px) {
      .container { width: min(100% - 1rem, 1180px); }
      .hero { padding-top: 2.5rem; }
      .section-head h2 { max-width: 12ch; }
      .quote, .stat, .card-content, .hero-overlay, .hero-overlay div { padding: var(--space-4); }
      .card, .hero-card { border-radius: 1.2rem; }
      .hero-actions { flex-direction: column; }
      .btn { width: 100%; }
    }
  </style>
</head>
<body>
  <a href="#main" class="skip-link">Skip to content</a>
  <header>
    <div class="container nav">
      <div class="brand" aria-label="Michael Jackson tribute logo">
        <div class="brand-mark">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" aria-hidden="true">
            <path d="M5 18C11 16 12 9 19 6" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"/>
            <path d="M9 5C10.5 7.5 10 10 8 12" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"/>
            <path d="M14.5 4.5L18.7 8.6" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"/>
          </svg>
        </div>
        <div class="brand-name">Moonwalk</div>
      </div>
      <nav class="nav-links" aria-label="Primary navigation">
        <a href="#legacy">Legacy</a>
        <a href="#gallery">Gallery</a>
        <a href="#spotlight">Spotlight</a>
      </nav>
    </div>
  </header>

  <main id="main">
    <section class="hero">
      <div class="container hero-grid">
        <div>
          <div class="eyebrow">Visual tribute • rhythm • style • stage presence</div>
          <h1>Michael Jackson.</h1>
          <p>
            A cinematic one-page HTML tribute inspired by iconic performance energy, dramatic lighting, and timeless pop artistry. This layout blends editorial typography with a premium image-driven experience.
          </p>
          <div class="hero-actions">
            <a class="btn btn-primary" href="#gallery">Explore gallery</a>
            <a class="btn btn-secondary" href="#spotlight">View spotlight</a>
          </div>
        </div>
        <figure class="hero-card">
          <img src="https://pplx-res.cloudinary.com/image/upload/pplx_search_images/872da5b0a00e630028e809f1eabbf450e5d80b07.jpg" alt="Michael Jackson performing in a dramatic dance pose on stage" width="1200" height="1200" loading="eager">
          <div class="hero-overlay">
            <div>
              <strong style="display:block; margin-bottom:.35rem; color: var(--color-primary);">Iconic silhouette</strong>
              <span>Stage movement, sharp styling, and concert drama brought together in one immersive visual composition.</span>
            </div>
          </div>
        </figure>
      </div>
    </section>

    <section id="legacy">
      <div class="container">
        <div class="section-head">
          <h2>Stage legacy</h2>
          <p>This project is designed as a polished fan-style showcase page. You can use it as a starter template and later add more sections like discography, video embeds, timelines, or a responsive lightbox.</p>
        </div>
        <div class="stats">
          <article class="stat">
            <span>Visual tone</span>
            <strong>Elegant</strong>
          </article>
          <article class="stat">
            <span>Layout style</span>
            <strong>Editorial</strong>
          </article>
          <article class="stat">
            <span>Experience</span>
            <strong>Responsive</strong>
          </article>
        </div>
      </div>
    </section>

    <section id="gallery">
      <div class="container">
        <div class="section-head">
          <h2>Image gallery</h2>
          <p>A modern grid with layered overlays, elegant spacing, and premium dark-mode styling to highlight portraiture, live performance, and signature dance imagery.</p>
        </div>
        <div class="gallery">
          <article class="card tall">
            <img src="https://pplx-res.cloudinary.com/image/upload/pplx_search_images/fefa8babcb7a517606974ccfdf9ba23e7847ad15.jpg" alt="Stylized portrait artwork of Michael Jackson" width="976" height="549" loading="lazy">
            <div class="card-content">
              <h3>Portrait aura</h3>
              <p>Bright pop-art energy framed with luxury contrast and deep surface gradients.</p>
            </div>
          </article>
          <article class="card">
            <img src="https://pplx-res.cloudinary.com/image/upload/pplx_search_images/551f476f521ac32da6e9b9e13efd0fae8b4bef51.jpg" alt="Michael Jackson performing in a collage of live concert moments" width="800" height="450" loading="lazy">
            <div class="card-content">
              <h3>Live voltage</h3>
              <p>Sharp tailoring, spotlight intensity, and unforgettable concert staging.</p>
            </div>
          </article>
          <article class="card">
            <img src="https://pplx-res.cloudinary.com/image/upload/pplx_search_images/3824c353486d1c85153df6b9ca1cb6dadb00bb7f.jpg" alt="Michael Jackson performing Smooth Criminal live with dancers" width="1280" height="720" loading="lazy">
            <div class="card-content">
              <h3>Signature motion</h3>
              <p>Clean composition built around movement, line, and theatrical balance.</p>
            </div>
          </article>
        </div>
      </div>
    </section>

    <section id="spotlight">
      <div class="container">
        <div class="quote">
          <div>
            <blockquote>
              “Built as a beautiful HTML tribute page with dramatic visuals, rich contrast, and smooth responsive behavior.”
            </blockquote>
          </div>
          <div>
            <p>
              If you want, I can next turn this into an even richer project with animated transitions, a masonry gallery, a music-player styled section, or a multi-page fan website.
            </p>
          </div>
        </div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container footer-box">
      <span>Michael Jackson visual tribute project</span>
      <span>Built in pure HTML + CSS</span>
    </div>
  </footer>
</body>
</html>
