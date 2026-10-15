# Strada A — Prototipo e Uso Locale (Nessun Account)

La **Strada A** ti permette di usare l'applicazione **subito**, senza creare alcun account, senza configurare database o server, e senza spendere un centesimo.

---

## Come Funziona

1. **Tutto nel Browser**: L'applicazione salva i punteggi, i badge e i dati delle squadre nella memoria locale del tuo browser (**LocalStorage**).
2. **Persistenza Automatica**: Anche se chiudi la scheda o riavvii il computer, tutte le modifiche apportate sul tabellone o nei passaporti rimangono salvate.
3. **Backup e Sincronizzazione tramite File TXT**:
   - Cliccando su **"Salva TXT"** scarichi il file `registro_gamification_geo_detectives.txt` con tutti i punteggi aggiornati.
   - Cliccando su **"Importa TXT"** puoi caricare o incollare un file di registro precedente su qualsiasi altro computer o LIM.
4. **Funziona anche Offline**: Una volta caricata la pagina nel browser, non serve connessione internet per compilare i punteggi, usare il timer o stampare.

---

## Come Avviare l'App in Locale

### Metodo 1: Doppio Clic (Il più semplice)
- Apri la cartella del progetto.
- Fai doppio clic sul file `index.html`.
- Si aprirà direttamente nel tuo browser predefinito (Chrome, Safari, Firefox o Edge).

### Metodo 2: Tramite Server Locale con Python
Se preferisci farlo girare come server locale:
1. Apri il terminale in questa cartella.
2. Esegui:
   ```bash
   python3 -m http.server 3000
   ```
3. Apri nel browser l'indirizzo:
   ```
   http://localhost:3000
   ```

---

## Funzionalità Principali della Strada A

- **🖥️ Hub LIM**: Schermata pensata per essere proiettata sulla Lavagna Interattiva Multimediale con timer ufficiale, scenario introduttivo e riepilogo statistico.
- **5.4 Tabellone Editabile**: Modifica rapida di punti Dossier 1, 2, 3 e commutazione con 1 clic dello stato dei badge (🏅 / ✕).
- **5.1 Passaporto di Squadra**: Visualizzazione dinamica del passaporto per ciascuna delle 6 squadre con sblocco visivo dei badge.
- **5.2 Dossier Operativi (1, 2, 3)**: Schede indagine complete pronte per la compilazione o la stampa.
- **5.3 Badge 78x46 mm**: Scheda stampabile A4 con dimensioni esatte 1:1 per essere incollati sui passaporti.
- **5.5 Guida Riservata Docente**: Con chiave di correzione rapida e pulsante per nascondere/mostrare le soluzioni (utile se si proietta).
- **5.6 Carte Aiuto**: Coupon "Lente d'ingrandimento" e "Consulto degli ispettori" stampabili.

---

## Quando Passare alla Strada B (Supabase)?

Rimani sulla Strada A se:
- Usi l'app solo tu come docente dal tuo computer collegato alla LIM.
- Vuoi testare la dinamica di gioco con la classe prima di creare un account cloud.

Passa alla **Strada B** se:
- Vuoi che gli studenti vedano i loro passaporti e punteggi **in tempo reale** dai loro smartphone/tablet mentre tu aggiorni il tabellone sulla LIM.
- Vuoi accedere all'app da qualsiasi dispositivo tramite un link pubblico (es. `https://tua-app.vercel.app`).
