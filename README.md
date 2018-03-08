# Cat's Pictures Shop

Hey, salut toi !

Bienvenue sur le repo de notre site de vente d'images de chat.

Pour le site, tu peux venir y faire un tour ici : [Poster de chats.com](https://poster-de-chats.herokuapp.com/)

## le MVP

### Ce que fait notre MVP

* Un visiteur peut visiter le site et y voir les images qui y sont à vendre. Bien-sûr, il lui est impossible d'accéder à la page panier (il est dirigé vers la page d'accueil s'il tente le coup). S'il tente d'ajouter une photo à un panier, il est dirigé ver la page de connection, un message flash s'affiche et l'invite à se connecter.

* Pour devenir User, le visiteur doit se créer un compte ou se connecter. La création de comptes User est géré par la gem Devise. Un user peut voir les images de chats et passer une commande.
Il a accès à son panier et sa commande.

* L'administrateur à accès à l'ensemble du site (forcement :) ), il a également une vue sur l'ensemble des commandes (mail / produits achetés / prix)
Il a la possibilité de créer de nouveaux produits, les éditer et les supprimer.

* Le paiement passe par Stripe.

### Liste des Features en plus integrées

En tant que visiteur, je peux avoir un panier
En tant qu'administrateur, j'ai accès à un dashboard qui fait un état des lieux des commandes
En tant qu'administrateur, je peux créer et modifier les produits affichés

### MAILJET

Intégration de Mailjet
La config est faite, actionMailer en place, compte crée et adresse mail whitelisté
Pas de mail réçu à date...

---------------------------------------------------------------------------

### Team : Clément / Dinehs / Hamza / Thibaut
