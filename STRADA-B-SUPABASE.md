# Strada B — Versione Cloud con Supabase e Pubblicazione su Vercel

Obiettivo: dati condivisi **online in tempo reale**, sincronizzazione multi-dispositivo (LIM docente + smartphone/tablet degli studenti), tutto gratuito con i piani free di **Supabase** e **Vercel**.

---

## 1. Cos'è Supabase e perché usarlo

Supabase fornisce un database PostgreSQL online con funzionalità **Realtime**. Quando il docente aggiorna i punteggi sulla LIM:
- I tablet degli studenti si aggiornano all'istante senza bisogno di ricaricare la pagina.
- Le squadre vedono subito il proprio badge sbloccarsi sul proprio passaporto digitale.
- I dati restano salvati nel cloud, accessibili da qualunque computer o telefono.

---

## 2. Configurazione Rapida Supabase (10 minuti)

### Passo 1: Crea l'account gratuito
1. Vai su [https://supabase.com](https://supabase.com) e clicca su **Start your project** / **Sign up**.
2. Puoi registrarti con GitHub o con la tua email. È 100% gratuito.

### Passo 2: Crea un nuovo progetto
1. Dalla dashboard di Supabase, clicca su **New Project**.
2. Scegli un nome per il progetto (es. `geo-detectives-amg`).
3. Inserisci una password per il database (salvala per sicurezza).
4. Scegli la regione più vicina (es. `Central EU (Frankfurt)`).
5. Clicca su **Create new project** e attendi circa 1 minuto che sia pronto.

### Passo 3: Esegui lo script SQL (Schema pronto)
1. Nel menu laterale di sinistra di Supabase, clicca sull'icona **SQL Editor**.
2. Clicca su **New query**.
3. Apri il file `supabase_schema.sql` che trovi nella cartella di questa app.
4. Copia tutto il contenuto, incollalo nell'editor di Supabase e clicca sul pulsante verde **Run** (in basso a destra).
5. Vedrai comparire il messaggio `Success`: le tabelle `squadre` e `sessione` sono create, popolate con le 6 squadre e pronte per il Realtime!

### Passo 4: Recupera le chiavi di connessione
1. Nel menu laterale di sinistra di Supabase, vai su **Project Settings** (icona ingranaggio) → **API**.
2. Troverai due valori da copiare:
   - **Project URL**: un link del tipo `https://abcdefghijklm.supabase.co`
   - **Project API keys → anon (public)**: una stringa lunga che inizia con `eyJ...`

---

## 3. Collegare l'App a Supabase

Hai due modi semplicissimi:

### Metodo Grafico (Consigliato, senza toccare codice)
1. Apri `index.html` nel browser.
2. Nella barra in alto clicca sul pulsante **⚙️ Cloud Supabase**.
3. Incolla l'**URL del Progetto** e la **Chiave Anonima (Public)**.
4. Clicca su **Test & Connetti**.
5. L'indicatore in alto diventerà verde: **🟢 Cloud Supabase: Connesso & Realtime Attivo**!

### Metodo Tramite File `config.js`
1. Apri il file `config.js` con un editor di testo (o VS Code).
2. Inserisci i valori:
   ```javascript
   window.APP_CONFIG = {
     supabaseUrl: 'https://tuo-progetto.supabase.co',
     supabaseAnonKey: 'la-tua-chiave-anon-public-qui',
     enableCloudSync: true,
     // ...
   };
   ```
3. Salva il file.

---

## 4. Pubblicazione Online su Vercel (Gratis per sempre)

Per avere un link pubblico (es. `https://geo-detectives.vercel.app`) da dare a studenti e colleghi:

### Metodo 1: Tramite Dashboard Vercel (Trascina e rilascia)
1. Registrati gratis su [https://vercel.com](https://vercel.com).
2. Se usi GitHub: carica questa cartella in un repository GitHub e collegalo a Vercel con un clic (**Add New → Project**). Vercel rileverà automaticamente la web app e la pubblicherà in 15 secondi.

### Metodo 2: Tramite Vercel CLI da Terminale
1. Se hai Node.js installato, apri il terminale in questa cartella ed esegui:
   ```bash
   npx vercel
   ```
2. Segui le istruzioni a video (premi Invio per accettare i parametri predefiniti).
3. Riceverai immediatamente il link pubblico dell'applicazione!

---

## 5. Verifica del Realtime in Classe

Per testare che tutto funzioni:
1. Apri l'app su un computer (schermo LIM).
2. Apri lo stesso link dal tuo smartphone.
3. Sul computer modifica un punteggio sul tabellone.
4. Guarda lo smartphone: vedrai il punteggio e il totale aggiornarsi **all'istante senza ricaricare la pagina**!
