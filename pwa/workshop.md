class: show-number, alt-code
layout: true

.bottom-bar[
  .light-text[PWA Workshop | [aka.ms/spwa](https://aka.ms/spwa)] .float-right[@sinedied]
]

---

class: left, no-bar, primary, no-counter

.title[
# .light-text.large[Progressive Web Apps]
## Interactive Workshop

.center[![](images/pwa-color-w.png)]
]

.full-layer.who.text-right.small.middle.light-text[
  .ms.responsive[![](images/ms-full-logo.svg)]
  |
  Yohan Lasorsa
  |
  @sinedied
]

---

# Workshop Objectives
- Create an Angular SPA and turn it into a PWA
- Configure service worker to add offline support
- Audit your app with Lighthouse 
- Deploy your app on Azure Static Web Apps
- Learn how build you very own PWA 😎

**Slides**<br>.big.up.ib[[aka.ms/spwa](https://aka.ms/spwa)]

---

# Prerequisites

| | |
|---------------|-----------------|
| Node.js v12+ | https://nodejs.org |
| Git | https://git-scm.com |
| GitHub account | https://github.com/join |
| Azure account | https://aka.ms/student/azure |
| A code editor | https://aka.ms/get-vscode |
| A chromium-based browser | https://www.microsoft.com/edge |

---

# Who are we?

.table.row.middle[
.col-4.center[
  .w-70.responsive.avatar.bounceInLeft.animated[![](images/photo.jpg)]

  **Yohan Lasorsa**<br>
  .fab.fa-twitter[] .e[@sinedied]
]
.col-4.center[
  .w-70.responsive.avatar.bounceInUp.animated[![](images/olivier.jpg)]

  **Olivier Leplus**<br>
  .fab.fa-twitter[] .e[@olivierleplus]
]
.col-4.center[
  .w-70.responsive.avatar.bounceInRight.animated[![](images/wassim.jpg)]

  **Wassim Chegham**<br>
  .fab.fa-twitter[] .e[@manekinekko]
]
]

---

class: middle
# .baseline.large[Who are .alt-text[**you**]? 🙂]

---

class: impact, left
# #1
## Bootstrap app, setup repo & deploy

---

# Create Angular app

```sh
# Install Angular CLI
npm install -g @angular/cli@latest

# Create Angular app
ng new my-pwa --defaults
cd my-pwa

# Test it
ng serve --open
```

---

# Build for production

Edit `package.json` and change build script to:
```json
"build": "ng build --prod",
```

Commit changes:
```sh
git add . && git commit -m "build for prod"
```

---

# Push to GitHub

1. Create new repo: https://github.com/new

  .do[
  > **Tip**: With GitHub CLI (https://cli.github.com) you can do it directly from command line: `gh repo create <name> --public`
  ]

2. Push your code to the repo:
  ```sh
  git remote add origin git@github.com:<USER>/<REPO>.git
  git push -u origin master
  ```

---

# Azure Static Web Apps (SWA)

## What's Azure SWA(G)?
.quote[
  <br>
> It's an all-inclusive hosting service for web apps with serverless APIs built using JavaScript, based on continuous deployment from a GitHub repository.
]

**Provides**:<br>
CI/CD, assets hosting, APIs, SSL certificate, route control, authentication, authorization, CDN, staging environment... More info: [aka.ms/docs/swa](https://aka.ms/docs/swa)

---

# Deploy to Azure Static Web Apps

1. Open Azure portal: [aka.ms/create/swa](https://aka.ms/create/swa)

2. Create new resource group `my-pwa`

3. Enter a name and choose a region

4. Sign in to GitHub and select your GitHub repo

5. Move to **Build** tab and set **App artifact location** to `dist/my-pwa`

6. Click **Review + create**, then **Create**

---

class: impact, left
# #2
## Audit, update to PWA, offline

---

# Audit your app

1. Open your deployed website URL

2. Open DevTools with `F12` or `CTRL+OPTION+COMMAND` (Mac)

3. Navigate to **Audits** tab

4. Click on **Generate report**

---

# Update to PWA

```sh
# Make your app a PWA
ng add @angular/pwa

# See the changes
git diff
```

.do[
> **Note**: there is no `ngsw-worker.js` file, it will be automatically generated during build based on `ngsw-config.json`.
]

---

# Test offline

Commit and push your changes:
```sh
git add . && git commit -m "add PWA support" && git push
```

### Once your new version is deployed

- Open your web app again then **generate an audit report again**.

- Take a look at **Application** tab.

- Go to **Network** tab, switch from `online` to `offline` and refresh.

---

class: impact, left
# #3
## Add API, update SW config, home install

---

# Add API

The API is based on Azure Functions: [aka.ms/go/functions](https://aka.ms/go/functions)

```sh
# Create API folder
mkdir api && cd api

# Create functions config file
echo "{ \"version\": \"2.0\" }" > host.json

# Create function folder
mkdir quote && cd quote
```

.do[
> **Tip**: if you install Azure Functions Core tools () you can just use `func init` instead. You can also test your functions locally with `func start`.
]

---

# Create function

.w-50.float-left.no-margin[
Create a file `index.js` with this:

```js
async function GetHello(context, req) {
  context.res = {
    body: 'Hello from API!'
  };
};

module.exports = GetHello;
```
]
.w-50.float-left.no-margin.space-left[
Create a file `function.json` with this:
```json
{
  "bindings": [
    {
      "authLevel": "function",
      "type": "httpTrigger",
      "direction": "in",
      "name": "req",
      "methods": ["get"]
    },
    {
      "type": "http",
      "direction": "out",
      "name": "res"
    }
  ]
}
```
]

---

# Use API in Angular app (1/2)

Edit `src/app/app.component.ts`:
```ts
import { HttpClient } from '@angular/common/http';

...

export class AppComponent {
  hello$ = this.httpClient.get('api/hello', { responseType: 'text' });

  constructor(private httpClient: HttpClient) {}
}
```

Edit `src/app/app.component.html`:
```ts
Message: {{ hello$ | async }}
```

---

# Use API in Angular app (2/2)

Edit `src/app/app.module.ts`:
```ts
*import { HttpClientModule } from '@angular/common/http';

...

  imports: [
    BrowserModule,
    ServiceWorkerModule.register('ngsw-worker.js', { enabled: environment.production }),
*   HttpClientModule
  ],
```

---

# Deploy and test API

Commit and push your changes:
```sh
git add . && git commit -m "add API" && git push
```

### Once your new version is deployed

- Open your web app again and hit `shift` + refresh (don't forget to switch back to `online` first!).

- Go to **Network** tab, switch from `online` to `offline` and refresh.

.big[😱]

---

# Update service worker config

Edit `ngsw-config.json`: .float-right[**docs:** https://angular.io/guide/service-worker-config]
```json
{
  ...
  "dataGroups": [
    {
      "name": "api",
      "urls": ["/api/hello"],
      "cacheConfig": {
        "maxSize": 1,
        "maxAge": "1m",
        "strategy": "freshness"
      }
    }
  ]
}
```

---

# Deploy and test API (again)

Commit and push your changes:
```sh
git add . && git commit -m "update SW config" && git push
```

### Once your new version is deployed

- Open your web app again and hit `shift` + refresh (don't forget to switch back to `online` first!).

- Go to **Network** tab, switch from `online` to `offline` and refresh.

.big[😎]

---

# Home screen install

Open your app on your mobile phone.

## Android

Refresh a few times to see the install banner, or tap menu and choose **Add to home screen**.

.do[
> **Tip**: you can customize install UI using `beforeinstallprompt` event, see https://web.dev/customize-install
]

## iOS

Tap the share button and choose **Add to home screen**.

---

class: impact, left
# #4
## [Bonus] App updates, your own PWA

---

# Using `SwUpdate` service
**Docs:** https://angular.io/guide/service-worker-communications

- Get notified of available updates
- Get notified of update activation
- Check for updates
- Activate latest updates

---

# Add update button (1/2)

Edit `src/app/app.component.ts`:
```ts
*import { SwUpdate } from '@angular/service-worker';
...

export class AppComponent {
  ...
* updateAvailable$ = this.swUpdate.available;

  constructor(private httpClient: HttpClient,
*             private swUpdate: SwUpdate) {}

*  async update() {
*    await this.swUpdate.activateUpdate();
*    document.location.reload();
*  }
}
```

---

# Add update button (2/2)

Edit `src/app/app.component.html`:
```ts
Message: {{ hello$ | async }}

<p *ngIf="updateAvailable$ | async; else noUpdate">
  An update is available!
  Click here to apply:
  <button (click)="update()">Update</button>
</p>
<ng-template #noUpdate>
  <p>No update available.</p>
</ng-template>
```

---

# Commit and redeploy

Commit and push your changes:
```sh
git add . && git commit -m "add SW updates" && git push
```

### Once your new version is deployed

- Open your web app again and hit `shift` + refresh.

- Check that you see the message `No update available.`, meaning that your app is up-to-date.

---

# Create a new version

- Add `<h1>New version!</h1>` to the top of `src/app/app.component.html`.

- Commit, push and wait for the new version to be deployed:
```sh
git add . && git commit -m "minor update" && git push
```

### Once your new version is deployed

- Hit refresh **ONCE** and **WITHOUT** holding shift.<br>You should see the **Update** button after a while.

- Click **Update**, the new version should appear.

---

# Make your own PWA 😎

### Public APIs
- https://github.com/public-apis/public-apis
- https://apilist.fun
- Or make your own!

### Ngx Rocket generator .small[(example app: [bit.ly/ngx-pwa](https://bit.ly/ngx-pwa))]
https://github.com/ngx-rocket/generator-ngx-rocket

- Responsive PWA starter with Material/Ionic, i18n and more

📢 **Tweet about it and mention us!** `@sinedied @olivierleplus @manekinekko @msdevs_fr`

---

.center[
  <br>
# .big[Thank you!]
]

# Resources
- Angular Service Worker: https://angular.io/guide/service-worker-intro
- Azure Static Web Apps: https://aka.ms/docs/swa
- Azure CosmosDB: https://aka.ms/docs/cosmosdb
- Ngx Rocket: https://github.com/ngx-rocket/generator-ngx-rocket
- Web Capabilities (Project Fugu 🐡): https://web.dev/fugu-status/
