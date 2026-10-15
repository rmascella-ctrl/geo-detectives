# Agenzia Mondiale Geografia (AMG) — Geo-Detectives 🌍
## Kit Didattico Digitale per Gamification Cooperativa

Applicazione web moderna per la gestione della gamification didattica: **"Il Pianeta Vivente"** (Scuola Secondaria di I Grado, Geografia).
Permette di proiettare sulla LIM della classe, gestire il tabellone dei punteggi, monitorare i dossier, assegnare badge e stampare schede e passaporti in formato standard A4.

---

## 🚀 Le Due Modalità di Utilizzo

Puoi usare l'app in due modalità, come descritto nelle guide allegate:

| Caratteristica | Strada A (Locale / Offline) | Strada B (Cloud Supabase) |
|---|---|---|
| **Configurazione iniziale** | Nessuna (immediata) | 10 minuti (account free) |
| **Dove stanno i dati** | Nel tuo browser (`localStorage`) | Database online Supabase |
| **Sincronizzazione Realtime** | Tramite file TXT/JSON | Multi-dispositivo automatica |
| **Accesso studenti** | Da LIM / stampa cartacea | Da smartphone, tablet e PC |
| **Costo** | Gratuito | Gratuito (piano free) |
| **Guida dettagliata** | [docs/STRADA-A-LOCALE.md](docs/STRADA-A-LOCALE.md) | [docs/STRADA-B-SUPABASE.md](docs/STRADA-B-SUPABASE.md) |

---

## 📁 Struttura del Progetto

```
Vercel/
├── index.html                   ← Applicazione Web Online completa
├── kit_completo_geo_detectives.html ← File HTML originale (conservato come backup)
├── config.js                    ← Parametri di configurazione (Supabase e opzioni)
├── config.example.js            ← Template di configurazione
├── supabase_schema.sql          ← Script SQL da eseguire su Supabase
├── vercel.json                  ← Configurazione per il deploy su Vercel
├── package.json                 ← Manifest per Vercel e script locali
├── .env.example                 ← Variabili d'ambiente di esempio
├── docs/
│   ├── STRADA-A-LOCALE.md       ← Guida passo-passo per l'uso locale
│   └── STRADA-B-SUPABASE.md     ← Guida passo-passo per Supabase & Vercel
└── README.md                    ← Questo file
```

---

## ⚡ Come Avviare l'Applicazione Subito

### 1. In Locale (Strada A)
- Fai doppio clic sul file `index.html` per aprirlo nel browser, oppure avvia un server locale dal terminale:
  ```bash
  python3 -m http.server 3000
  ```
  e visita `http://localhost:3000`.

### 2. Nel Cloud con Supabase (Strada B)
1. Apri `index.html`.
2. Clicca sul pulsante **⚙️ Cloud Supabase** nella barra di navigazione.
3. Incolla il tuo **Supabase URL** e la tua **Anon Key** (ottenuti seguendo [docs/STRADA-B-SUPABASE.md](docs/STRADA-B-SUPABASE.md)).
4. Clicca su **Test & Connetti**. La sincronizzazione in tempo reale sarà attiva!

### 3. Pubblicazione Online su Vercel
1. Crea un account su [Vercel](https://vercel.com).
2. Carica questa cartella su GitHub o esegui da terminale:
   ```bash
   npx vercel
   ```
3. L'applicazione sarà online con un URL pubblico protetto da HTTPS condivisibile con l'intera classe.

---

## 🎯 Contenuti Inclusi nel Kit

1. **🖥️ Hub LIM**:
   - Scenario investigativo con narrazione AMG.
   - Timer ufficiale per i dossier (20m, 15m, pausa, reset e allarme sonoro opzionale).
   - Statistiche in tempo reale (squadre, punti classe, badge assegnati).

2. **5.4 Tabellone Editabile**:
   - Punteggi editabili per i tre Dossier (Dossier 1: Fusi orari, Dossier 2: Tettonica, Dossier 3: Biomi).
   - Commutazione immediata dei badge (🏅 / ✕).
   - Calcolo automatico di totale e qualifica (⭐ Élite vs ✓ Standard).

3. **5.1 Passaporto Investigativo**:
   - Compilazione automatica per la squadra selezionata.
   - Slot per badge ritagliabili di dimensione esatta 78 × 46 mm.

4. **5.2 Dossier Operativi (1, 2, 3)**:
   - Diagrammi SVG ad alta definizione: volo intercontinentale e fusi, inclinazione asse terrestre e solstizi, margini di placca tettonica, climogrammi comparati e strati della foresta amazzonica.

5. **5.3 Badge Stampabili**:
   - 4 badge ufficiali (Master del Tempo, Sismologo, Custode Biosfera, Titolo d'Élite) pronti da ritagliare.

6. **5.5 Guida Riservata Docente**:
   - Soluzioni rapide e criteri di correzione, con pulsante per nascondere le soluzioni durante la proiezione.

7. **5.6 Carte Aiuto**:
   - Coupon per "Lente d'ingrandimento" e "Consulto degli ispettori".
