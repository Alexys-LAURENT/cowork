<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon Application</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class='flex w-full justify-center bg-[#F7F7F9]'>
<div class='w-full max-w-[1300px]'>

    <header>
        <nav class='w-full flex flex-col md:flex-row items-center p-2 bg-white gap-2 md:gap-0'>
        	<div class="w-full md:w-3/12 flex justify-center md:justify-start">
        	<p class='text-2xl font-bold'>CoWork</p>
        	</div>
        	<div class="w-full md:w-6/12 ">
        	<ul class='list-none flex flex-col md:flex-row gap-4 items-center justify-center text-base'>
        	<li>
        	Accueil
        	</li>
        	<li>
        	Nos éspaces
        	</li>
        	<li>
        	Forum
        	</li>
        	<li>
        	FAQ
        	</li>
        	</ul>
        	</div>
        	<div class="w-full md:w-3/12 flex justify-end items-center">
        	<button class='bg-orange-400 w-full md:w-auto rounded-sm text-white px-4 py-2 font-semibold '>Se connecter</button>
        	</div>
        </nav>
    </header>
    <main>
        <!-- Inclure dynamiquement la page spécifiée -->
        <jsp:include page="${pageContent}" />
    </main>
    <footer class='w-full bg-white py-10 flex flex-col md:flex-row items-center justify-around'>
        <div class='flex flex-col w-full md:w-auto items-center md:items-start gap-2 font-semibold'>
        	<p>© 2024 CoWork. Tous droits réservés.</p>
        	<p>123 Rue des Entrepreneurs, 75000 Paris, France</p>
         	<p>Email : contact@cowork.com </p>
          	<p>Téléphone : +33 1 23 45 67 89</p>
        </div>
         <div class='flex flex-col w-full md:w-auto items-center md:items-start gap-2 font-semibold'>
        	<p>Mentions légales</p>
        	<p>Politique de cookies</p>
         	<p>Conditions générales d’utilisation (CGU)</p>
          	<p>Politique de confidentialité</p>
        </div>
    </footer>
    </div>
</body>
</html>
