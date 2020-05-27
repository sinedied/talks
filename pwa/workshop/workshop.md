PWA WORKSHOP
============

Prop: instead of NGX
-> https://angular.io/guide/service-worker-getting-started
-> Make a GH repo

# Intro: Objectives
  - Create a web app, see how it can be turned into a PWA
  - Use Lighthouse audit
  - Use and understand how Angular SW works, add offline support
  - Make your very own PWA!

0. Check Netlify account, ngx --version, vscode

1. NGX without PWA
  - Brief project presentation
  - Add redirect
  - Build, deploy
  - Test app, test offline
  - -> Lighthouse
  - Edit .yo-rc.json -> app.json
  - COMMIT!

2. NGX with PWA
  - See diff changes
  - Re-add redirect
  - Build, deploy
  - Test app
  - -> Lighthouse

3. Test offline, API down :(

4. Add API request, test again \o/
  - https://angular.io/guide/service-worker-config

5. Test home screen install
  - Test on mobiles

6. Update homepage, deploy, refresh once
  - Talk about update, catching event, pulling...
  - Show ngsw/state

7. Manage updates with `SwUpdate` service
  - https://angular.io/guide/service-worker-communications

8. Find an API, change homepage
  - https://github.com/public-apis/public-apis (go/apis)
  - https://apilist.fun

9. Bonus: NGX with Cordova/Electron
