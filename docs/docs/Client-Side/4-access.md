# 4 - Access Private Network Resources

The Server Side installation came with some goodies only accessible when connected to the VPN.

## A quick note

So we are on our private VPN running up in the cloud.

There are apps and stuff already running that we can connect to and configure.

These services are only available to devices on the VPN. So if you disconnect you can't access.

This is one form of server security.

The big boys do this in corporate just on a much bigger scale.

## So you are on the VPN now

Let's access some private services from your browser (assuming your local has a gui. if not, then use `curl`).

So let's point our browser at a protected site on the VPS. We'll just connect to Gitea, an open source source code control server. It's like GitHub basically.

## Private Link Portal

this will open your browser to the internal portal. When you see an admin dashboard, then you are good. the configuration is simple and outside the scope of this article.

<a href="http://10.28.1.1/" target="portal"><button>Access Intranet Portal</button></a>

## Private Media Server

this will open your browser to the internal media server. When you see a page that says "emby", then you are good. the configuration is simple and outside the scope of this article.

<a href="http://10.28.1.1:8096/" target="emby"><button>Access Media Server</button></a>

## PhpMyAdmin Database Manager

There is a mariadb server running. and it's go

`username`: root

`password`: aggiepride

<a href="http://10.28.1.1:28380/" target="Database"><button>Access Database Manager</button></a>


## Gitea Private Source Code Repository

--

<a href="http://10.28.1.1:3000/" target="Git"><button>Access Git Repositories</button></a>


## Todo List

--

<a href="http://10.28.1.1:28688/" target="Todo"><button>Access Todo List</button></a>


## Private Wordpress blog

--

<a href="http://10.28.1.1:28480/" target="Blog"><button>Access Private Blog</button></a>

## Valorant Work Space

--

<a href="http://10.28.1.1:28180/" target="Todo"><button>Access Valorant Work Space</button></a>

