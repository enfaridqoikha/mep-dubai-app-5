# MEP Dubai App - Admin Guide (Short)
Steps to get APK using GitHub Actions:
1. Create a new GitHub repo and push this project's files to `main`.
2. In the repo Settings > Secrets, add any secrets your backend may need (if used).
3. Go to Actions tab, run "Build Flutter APK" workflow, or push to main.
4. When workflow completes, download the `mep-dubai-apk` artifact (app-release.apk).
5. Test the APK on Android device (enable install from unknown sources).
6. To connect ChatGPT / DEWA dynamic updates:
   - Deploy a small backend (serverless) that:
     * Proxies user questions to OpenAI (or free model endpoint you prefer).
     * Fetches/periodically scrapes DEWA and Dubai codes, stores them in Firestore.
   - Point `lib/services/qa_service.dart` backendEndpoint to that service.
