<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MindCircuit</title>

    <style>
        :root {
            --primary-orange: #f97316;
            --primary-orange-dark: #ea580c;
            --background: #fffaf5;
            --text-color: #333333;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: var(--background);
            color: var(--text-color);
            line-height: 1.6;
        }

        header {
            background-color: var(--primary-orange);
            color: #ffffff;
            padding: 2rem;
            text-align: center;
        }

        main {
            max-width: 900px;
            margin: 2rem auto;
            padding: 0 1rem;
        }

        section {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 1.5rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
        }

        h1, h2 {
            margin-bottom: 1rem;
        }

        .highlight {
            color: var(--primary-orange-dark);
            font-weight: bold;
        }

        footer {
            text-align: center;
            padding: 1rem;
            background-color: var(--primary-orange);
            color: #ffffff;
            margin-top: 2rem;
        }
    </style>
</head>
<body>

<header>
    <h1>MindCircuit</h1>
    <p>Innovate. Connect. Transform.</p>
</header>

<main>
    <section>
        <h2>Welcome</h2>
        <p>
            Welcome to <span class="highlight">MindCircuit</span>,
            a platform designed to inspire innovation and streamline digital solutions.
        </p>
    </section>

    <section>
        <h2>User Portal</h2>

        <c:choose>
            <c:when test="${not empty username}">
                <p>
                    Hello,
                    <span class="highlight">
                        <c:out value="${username}" />
                    </span>!
                </p>
            </c:when>
            <c:otherwise>
                <p>Hello, Guest! Please sign in to access your dashboard.</p>
            </c:otherwise>
        </c:choose>
    </section>

    <section>
        <h2>System Status</h2>
        <p>Application is running successfully.</p>
    </section>
</main>

<footer>
    <p>&copy; 2026 MindCircuit. All rights reserved.</p>
</footer>

</body>
</html>
