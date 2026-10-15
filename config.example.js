/**
 * Configurazione Geo-Detectives AMG
 * Copia questo file in config.js e inserisci i parametri del tuo database Supabase (Strada B),
 * oppure inserisci le credenziali direttamente dall'interfaccia grafica tramite il pulsante "Cloud Supabase".
 */
window.APP_CONFIG = {
  // --- STRADA B: Parametri Supabase Cloud ---
  // Inserisci l'URL del tuo progetto Supabase (es. 'https://abcdefghijklm.supabase.co')
  supabaseUrl: '',

  // Inserisci la tua anon key pubblica di Supabase (Settings -> API -> anon public)
  supabaseAnonKey: '',

  // Attiva la sincronizzazione cloud all'avvio se i parametri sopra sono valorizzati
  enableCloudSync: false,

  // --- STRADA A: Parametri Locali ---
  // Salva automaticamente le modifiche nel browser (localStorage)
  autoSaveLocal: true,

  // Attiva effetti sonori per timer e sblocco badge
  soundEffects: true,

  // Informazioni della classe di default
  session: {
    classe: 'Classe 3ª',
    sezione: 'A',
    materia: 'Geografia',
    unita: 'Unità 1 - Il Pianeta Vivente'
  }
};
