<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern Premium E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES (GREEN THEME) ========== */
        :root {
            --bg: #06130d;
            --bg-card: rgba(13, 31, 23, 0.75);
            --bg-card-hover: rgba(18, 44, 32, 0.88);
            --surface: rgba(255, 255, 255, 0.04);
            --surface-border: rgba(16, 185, 129, 0.15);
            
            --primary: #ffffff;
            --muted: #a3b8cc;
            --muted-light: #527063;
            
            --accent: #10b981;
            --accent-gradient: linear-gradient(135deg, #10b981 0%, #059669 50%, #047857 100%);
            --accent-glow: rgba(16, 185, 129, 0.35);
            --accent-light: rgba(16, 185, 129, 0.12);
            
            --success: #34d399;
            --warning: #f59e0b;
            
            --radius: 20px;
            --radius-sm: 12px;
            --shadow: 0 10px 30px -10px rgba(0, 0, 0, 0.6);
            --shadow-hover: 0 20px 40px -15px rgba(16, 185, 129, 0.3);
            --transition: all 0.3s cubic-bezier(0.16, 1, 0.3, 1);
            --container: 1280px;
        }

        /* ========== RESET & BASE ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
            overflow-x: hidden;
            background-image: 
                radial-gradient(circle at 15% 15%, rgba(16, 185, 129, 0.15) 0%, transparent 45%),
                radial-gradient(circle at 85% 65%, rgba(5, 150, 105, 0.1) 0%, transparent 45%);
            background-attachment: fixed;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 14px 32px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 15px;
            transition: var(--transition);
            border: 1px solid transparent;
            position: relative;
            overflow: hidden;
        }
        .btn-primary {
            background: var(--accent-gradient);
            color: #fff;
            box-shadow: 0 4px 20px var(--accent-glow);
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px rgba(16, 185, 129, 0.5);
            filter: brightness(1.1);
        }
        .btn-ghost {
            background: rgba(255, 255, 255, 0.05);
            color: #fff;
            border-color: var(--surface-border);
            backdrop-filter: blur(10px);
        }
        .btn-ghost:hover {
            background: rgba(16, 185, 129, 0.15);
            border-color: rgba(16, 185, 129, 0.4);
            transform: translateY(-2px);
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(6, 19, 13, 0.8);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--surface-border);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-weight: 800;
            font-size: 24px;
            letter-spacing: -0.5px;
            color: var(--primary);
        }
        .brand-icon {
            width: 40px;
            height: 40px;
            background: var(--accent-gradient);
            border-radius: 12px;
            display: grid;
            place-items: center;
            color: white;
            font-size: 18px;
            box-shadow: 0 4px 15px var(--accent-glow);
        }
        .brand .accent {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 10px 18px;
            border-radius: 999px;
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--accent-light);
            color: #6ee7b7;
            border: 1px solid var(--surface-border);
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 999px;
            padding: 0 16px 0 20px;
            transition: var(--transition);
            border: 1px solid var(--surface-border);
            width: 260px;
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 20px var(--accent-glow);
            background: rgba(16, 185, 129, 0.08);
            width: 300px;
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
            color: var(--primary);
        }
        .search-wrap input::placeholder {
            color: var(--muted-light);
        }
        .search-wrap button {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }
        .search-wrap button:hover {
            color: var(--accent);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .header-actions .icon-btn {
            width: 44px;
            height: 44px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 16px;
            color: var(--primary);
            background: var(--surface);
            border: 1px solid var(--surface-border);
            transition: var(--transition);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: var(--accent-light);
            border-color: var(--accent);
            color: #6ee7b7;
            transform: translateY(-2px);
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent);
            color: #000;
            font-size: 11px;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid var(--bg);
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 12px;
            font-size: 18px;
            background: var(--surface);
            color: var(--primary);
            border: 1px solid var(--surface-border);
        }

        #mobileMenu {
            display: none;
            background: var(--bg);
            border-bottom: 1px solid var(--surface-border);
            padding: 16px 0 24px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--primary);
            background: var(--surface);
        }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 520px;
            padding: 80px 0;
            border-radius: 32px;
            overflow: hidden;
            margin: 24px 24px 0;
            background: radial-gradient(circle at top right, rgba(16, 185, 129, 0.2), transparent 60%),
                        linear-gradient(180deg, rgba(13, 31, 23, 0.8) 0%, rgba(6, 19, 13, 0.9) 100%);
            border: 1px solid var(--surface-border);
            box-shadow: var(--shadow);
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--accent-light);
            border: 1px solid rgba(16, 185, 129, 0.3);
            color: #6ee7b7;
            padding: 6px 18px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 13px;
            margin-bottom: 24px;
        }
        .hero h1 {
            font-size: 56px;
            font-weight: 800;
            color: #fff;
            line-height: 1.1;
            max-width: 680px;
            margin-bottom: 20px;
            letter-spacing: -1.5px;
        }
        .hero p {
            color: var(--muted);
            font-size: 18px;
            max-width: 540px;
            margin-bottom: 36px;
        }
        .hero .actions {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        /* ========== SECTION ========== */
        .section {
            padding: 64px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 36px;
        }
        .section-header .title-group h2 {
            font-size: 32px;
            font-weight: 800;
            letter-spacing: -0.8px;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 6px;
            font-size: 15px;
        }
        .section-header .view-all {
            font-weight: 600;
            color: #6ee7b7;
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 14px;
            transition: var(--transition);
        }
        .section-header .view-all:hover {
            gap: 12px;
            color: #fff;
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 20px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
            border: 1px solid var(--surface-border);
            backdrop-filter: blur(10px);
        }
        .cat-card:hover {
            transform: translateY(-8px);
            background: var(--bg-card-hover);
            border-color: rgba(16, 185, 129, 0.4);
            box-shadow: var(--shadow-hover);
        }
        .cat-card .icon-wrap {
            width: 60px;
            height: 60px;
            border-radius: 18px;
            background: var(--surface);
            border: 1px solid var(--surface-border);
            display: grid;
            place-items: center;
            margin: 0 auto 16px;
            font-size: 22px;
            color: #6ee7b7;
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: var(--accent-gradient);
            color: #fff;
            box-shadow: 0 8px 20px var(--accent-glow);
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 700;
        }
        .cat-card .count {
            font-size: 13px;
            color: var(--muted);
            margin-top: 4px;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 1px solid var(--surface-border);
            backdrop-filter: blur(10px);
        }
        .product-card:hover {
            transform: translateY(-8px);
            border-color: rgba(16, 185, 129, 0.4);
            box-shadow: var(--shadow-hover);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: rgba(0, 0, 0, 0.2);
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s cubic-bezier(0.16, 1, 0.3, 1);
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.08);
        }
        .product-card .badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--accent-gradient);
            color: #fff;
            padding: 4px 12px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.5px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }
        .product-card .badge.sale {
            background: linear-gradient(135deg, #f59e0b 0%, #ef4444 100%);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(6, 19, 13, 0.6);
            border: 1px solid var(--surface-border);
            display: grid;
            place-items: center;
            font-size: 15px;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(8px);
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: #ef4444;
            transform: scale(1.1);
        }
        .product-card .body {
            padding: 20px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .product-card .body .category-tag {
            font-size: 11px;
            color: var(--accent);
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 700;
        }
        .product-card .body h5 {
            font-size: 16px;
            font-weight: 700;
            line-height: 1.4;
            color: var(--primary);
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: auto;
            padding-top: 8px;
        }
        .product-card .body .price {
            font-weight: 800;
            font-size: 20px;
            color: #fff;
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 12px;
            color: #f59e0b;
        }
        .product-card .body .rating span {
            color: var(--muted);
            margin-left: 4px;
        }
        .product-card .footer {
            padding: 0 20px 20px;
        }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 12px;
            border-radius: var(--radius-sm);
            background: var(--surface);
            border: 1px solid var(--surface-border);
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent-gradient);
            border-color: transparent;
            box-shadow: 0 4px 15px var(--accent-glow);
        }
        .product-card .footer .add-btn.added {
            background: var(--success);
            color: #000;
            border-color: transparent;
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            background: var(--bg-card);
            border-radius: 28px;
            overflow: hidden;
            border: 1px solid var(--surface-border);
            box-shadow: var(--shadow);
        }
        .deal-wrap .deal-img {
            flex: 1;
            background: rgba(0, 0, 0, 0.3);
            min-height: 380px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(245, 158, 11, 0.15);
            border: 1px solid rgba(245, 158, 11, 0.3);
            color: #fbbf24;
            padding: 6px 16px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            align-self: flex-start;
            margin-bottom: 16px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 36px;
            font-weight: 800;
            margin-bottom: 12px;
            letter-spacing: -0.5px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 24px;
            font-size: 16px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 36px;
            font-weight: 800;
            color: #fff;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 22px;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 12px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: var(--muted);
            margin: 8px 0 20px;
        }
        .deal-wrap .deal-content .stock strong {
            color: #f43f5e;
        }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin-bottom: 28px;
        }
        .timer-box {
            background: var(--surface);
            border: 1px solid var(--surface-border);
            padding: 12px;
            border-radius: var(--radius-sm);
            min-width: 72px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 24px;
            font-weight: 800;
            color: #6ee7b7;
        }
        .timer-box .label {
            font-size: 10px;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 10px 4px 20px;
            scroll-snap-type: x mandatory;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 6px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--surface-border);
            border-radius: 999px;
        }
        .testimonial-card {
            flex: 0 0 360px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px;
            border: 1px solid var(--surface-border);
            scroll-snap-align: start;
        }
        .testimonial-card .stars {
            color: #f59e0b;
            font-size: 14px;
            margin-bottom: 14px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.6;
            color: var(--muted);
            margin-bottom: 20px;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
        }
        .testimonial-card .author .name {
            font-weight: 700;
            font-size: 15px;
        }
        .testimonial-card .author .role {
            font-size: 12px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: radial-gradient(circle at top left, rgba(16, 185, 129, 0.25), transparent 70%),
                        var(--bg-card);
            border-radius: 28px;
            padding: 56px;
            border: 1px solid var(--surface-border);
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-size: 32px;
            font-weight: 800;
            margin-bottom: 6px;
        }
        .newsletter-wrap .text p {
            color: var(--muted);
            font-size: 16px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 12px;
            flex: 1;
            max-width: 480px;
        }
        .newsletter-wrap form input {
            flex: 1;
            padding: 14px 22px;
            border-radius: 999px;
            border: 1px solid var(--surface-border);
            font-size: 15px;
            background: var(--surface);
            color: #fff;
            outline: none;
            transition: var(--transition);
        }
        .newsletter-wrap form input:focus {
            border-color: var(--accent);
            box-shadow: 0 0 20px var(--accent-glow);
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 40px;
            padding: 60px 0 32px;
            border-top: 1px solid var(--surface-border);
            background: rgba(6, 19, 13, 0.6);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 14px;
            max-width: 300px;
            margin: 16px 0 20px;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 10px;
        }
        .footer-grid .brand-col .socials a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--surface);
            border: 1px solid var(--surface-border);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent-gradient);
            color: #fff;
            border-color: transparent;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 15px;
            margin-bottom: 16px;
            color: #fff;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover {
            color: #fff;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 24px;
            border-top: 1px solid var(--surface-border);
            color: var(--muted-light);
            font-size: 13px;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
        }
        @media (max-width: 992px) {
            .hero h1 { font-size: 40px; }
            .hero { margin: 16px 16px 0; padding: 48px 0; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-content { padding: 32px; }
            .newsletter-wrap { padding: 36px; flex-direction: column; text-align: center; }
            .newsletter-wrap form { max-width: 100%; width: 100%; }
            .search-wrap { width: 180px; }
            .search-wrap:focus-within { width: 220px; }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
            .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
            .hero h1 { font-size: 32px; }
            .footer-grid { grid-template-columns: 1fr; }
            .search-wrap { display: none; }
        }
        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
            .categories-grid { grid-template-columns: 1fr; }
            .container { padding: 0 16px; }
        }
    </style>
</head>

<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <div class="brand-icon"><i class="fas fa-cube"></i></div>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:12px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap" style="position:relative;">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="badge"><i class="fas fa-sparkles"></i> Next-Gen Collection 2026</div>
                <h1>Discover Premium <br>Digital Essentials</h1>
                <p>Curated fashion, tech & lifestyle gear with fast shipping worldwide. Experience the next era of online shopping.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Explore Shop</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-bolt"></i> Flash Deals</button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="cat-title">Popular Categories</h2>
                        <p>Browse through our carefully curated departments</p>
                    </div>
                    <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="prod-title">Trending Products</h2>
                        <p>Top-rated items loved by our global community</p>
                    </div>
                    <a href="#" class="view-all">View All Products <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="deals-title">Flash Offer</h2>
                        <p>Limited quantity available at promotional pricing</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Deal Of The Week</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, and hyper-efficient. The Apple M2 chip redefines mobile performance with effortless speed and battery longevity.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Only <strong>12 units</strong> remaining in stock!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Claim This Deal</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="test-title">Customer Feedback</h2>
                        <p>Real stories from satisfied customers around the globe</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Join The Club</h3>
                        <p>Subscribe for exclusive drops, VIP deals & news</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email address" aria-label="Email" required />
                        <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Join Now</button>
                        <div id="newsletterMsg" style="width: 100%; margin-top: 10px; font-size: 14px;"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <a class="brand" href="#">
                        <div class="brand-icon"><i class="fas fa-cube"></i></div>
                        <span>Nexus<span class="accent">Shop</span></span>
                    </a>
                    <p>Next-generation e-commerce experience designed for modern shoppers. High quality, zero hassle.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping Policy</a></li>
                        <li><a href="#">Returns & Exchanges</a></li>
                        <li><a href="#">Contact Support</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Cookie Settings</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop Inc. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- ===== SCRIPT ===== -->
    <script>
        // DATA
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Audio & Tech', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-clock', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Audio & Tech' },
            { id: 6, title: 'Chanel No. 5 Perfume', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Minimalist Travel Pack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5 Headphones', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Audio & Tech' }
        ];

        const TESTIMONIALS = [{
            name: 'Ava Martin',
            role: 'Verified Buyer',
            avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
            text: 'Super fast shipping and incredible packaging. Product quality exceeded expectations!',
            stars: 5
        }, {
            name: 'Michael Lee',
            role: 'Frequent Shopper',
            avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
            text: 'Extremely sleek store with a smooth checkout experience. Customer service was ultra helpful.',
            stars: 4
        }, {
            name: 'Sophia Chen',
            role: 'UI Designer',
            avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
            text: 'The dark aesthetic is gorgeous and the products arrive looking exactly as advertised.',
            stars: 5
        }, {
            name: 'James Wilson',
            role: 'Tech Enthusiast',
            avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
            text: 'Unbeatable deals on gadgets. I picked up the M2 MacBook deal and received it within two days!',
            stars: 5
        }];

        let cartCount = 0;

        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No matching products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="rating">${stars} <span>(${p.reviews})</span></div>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    addToCart(Number(this.dataset.id), this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
            }[s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.3)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            cartCount++;
            updateCartCount();

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // TIMER
        (function setupDealTimer() {
            const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) return;
                document.getElementById('dealDays').textContent = Math.floor(diff / (24 * 3600 * 1000));
                document.getElementById('dealHours').textContent = String(Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000))).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600 * 1000)) / (60 * 1000))).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60 * 1000)) / 1000)).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // EVENT HANDLERS
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
        });

        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added to Cart!';
            setTimeout(() => this.innerHTML = orig, 1600);
        });

        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#ef4444';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#34d399';
            newsletterEmail.value = '';
            setTimeout(() => newsletterMsg.textContent = '', 3500);
        });

        document.getElementById('year').textContent = new Date().getFullYear();

        // INIT
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();
    </script>
</body>
</html>
