-- ==============================================================================
-- SCHEMA DATABASE SUPABASE PER "GEO-DETECTIVES: IL PIANETA VIVENTE"
-- Da incollare ed eseguire nella console di Supabase:
-- SQL Editor -> New query -> Incolla questo script -> Clicca su "Run"
-- ==============================================================================

-- 1. Tabella delle Squadre
CREATE TABLE IF NOT EXISTS public.squadre (
  id INTEGER PRIMARY KEY,
  nome TEXT NOT NULL,
  capo TEXT NOT NULL DEFAULT '',
  cartografo TEXT NOT NULL DEFAULT '',
  tempo TEXT NOT NULL DEFAULT '',
  portavoce TEXT NOT NULL DEFAULT '',
  bes BOOLEAN NOT NULL DEFAULT false,
  pt_d1 INTEGER NOT NULL DEFAULT 0,
  badge_d1 BOOLEAN NOT NULL DEFAULT false,
  pt_d2 INTEGER NOT NULL DEFAULT 0,
  badge_d2 BOOLEAN NOT NULL DEFAULT false,
  pt_d3 INTEGER NOT NULL DEFAULT 0,
  badge_d3 BOOLEAN NOT NULL DEFAULT false,
  punti_tot INTEGER NOT NULL DEFAULT 0,
  badge_tot INTEGER NOT NULL DEFAULT 0,
  carte_rimaste INTEGER NOT NULL DEFAULT 1,
  privilegio TEXT NOT NULL DEFAULT 'Nessuno',
  stato_finale TEXT NOT NULL DEFAULT 'IN_CORSO',
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 2. Tabella della Sessione e Timer di Classe
CREATE TABLE IF NOT EXISTS public.sessione (
  id TEXT PRIMARY KEY DEFAULT 'current',
  classe TEXT NOT NULL DEFAULT 'Classe 3ª',
  sezione TEXT NOT NULL DEFAULT 'A',
  materia TEXT NOT NULL DEFAULT 'Geografia',
  unita TEXT NOT NULL DEFAULT 'Unità 1 - Il Pianeta Vivente',
  timer_secondi INTEGER NOT NULL DEFAULT 1200,
  timer_in_corso BOOLEAN NOT NULL DEFAULT false,
  dossier_attivo INTEGER NOT NULL DEFAULT 1,
  messaggio_lim TEXT DEFAULT 'Attenzione Unità Speciali: Dossier attivi!',
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 3. Inserimento dati iniziali (se le tabelle sono vuote)
INSERT INTO public.squadre (id, nome, capo, cartografo, tempo, portavoce, bes, pt_d1, badge_d1, pt_d2, badge_d2, pt_d3, badge_d3, punti_tot, badge_tot, carte_rimaste, privilegio, stato_finale)
VALUES
  (1, 'Squadra Alpha', 'Marco Rossi', 'Chiara Bianchi', 'Luca Verdi', 'Sara Neri', false, 95, true, 90, true, 90, true, 275, 3, 1, 'Scelta del Ruolo prioritario', 'QUALIFICATO_ELITE'),
  (2, 'Squadra Beta', 'Giulia Ferrari', 'Matteo Conti', 'Elena Esposito', 'Federico Russo', false, 85, true, 85, true, 80, true, 250, 3, 2, 'Nessuno', 'QUALIFICATO_ELITE'),
  (3, 'Squadra Gamma', 'Davide Romano', 'Sofia Colombo', 'Simone Ricci', 'Alice Marino', false, 90, true, 80, true, 85, true, 255, 3, 1, 'Nessuno', 'QUALIFICATO_ELITE'),
  (4, 'Squadra Delta', 'Alessio De Luca', 'Lorenzo Gallo', 'Martina Costa', 'Gabriele Fontana', true, 75, true, 75, true, 70, true, 220, 3, 0, 'Supporto visivo permanente', 'QUALIFICATO_STANDARD'),
  (5, 'Squadra Epsilon', 'Francesca Barbieri', 'Christian Serra', 'Aurora Moretti', 'Tommaso Rinaldi', false, 80, true, 75, true, 75, true, 230, 3, 1, 'Nessuno', 'QUALIFICATO_STANDARD'),
  (6, 'Squadra Zeta', 'Leonardo Santoro', 'Camilla Villa', 'Mattia Vitale', 'Beatrice Caruso', false, 75, true, 70, true, 75, true, 220, 3, 0, 'Nessuno', 'QUALIFICATO_STANDARD')
ON CONFLICT (id) DO NOTHING;

INSERT INTO public.sessione (id, classe, sezione, materia, unita, timer_secondi, timer_in_corso, dossier_attivo)
VALUES ('current', 'Classe 3ª', 'A', 'Geografia', 'Unità 1 - Il Pianeta Vivente', 1200, false, 1)
ON CONFLICT (id) DO NOTHING;

-- 4. Abilitazione Row Level Security (RLS) con policy aperte per accesso d'aula con anon key
ALTER TABLE public.squadre ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.sessione ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Lettura pubblica squadre" ON public.squadre;
CREATE POLICY "Lettura pubblica squadre" ON public.squadre FOR SELECT USING (true);

DROP POLICY IF EXISTS "Aggiornamento pubblico squadre" ON public.squadre;
CREATE POLICY "Aggiornamento pubblico squadre" ON public.squadre FOR UPDATE USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "Inserimento pubblico squadre" ON public.squadre;
CREATE POLICY "Inserimento pubblico squadre" ON public.squadre FOR INSERT WITH CHECK (true);

DROP POLICY IF EXISTS "Lettura pubblica sessione" ON public.sessione;
CREATE POLICY "Lettura pubblica sessione" ON public.sessione FOR SELECT USING (true);

DROP POLICY IF EXISTS "Aggiornamento pubblico sessione" ON public.sessione;
CREATE POLICY "Aggiornamento pubblico sessione" ON public.sessione FOR UPDATE USING (true) WITH CHECK (true);

-- 5. Abilitazione Realtime per aggiornamenti istantanei su LIM e dispositivi degli studenti
ALTER PUBLICATION supabase_realtime ADD TABLE public.squadre;
ALTER PUBLICATION supabase_realtime ADD TABLE public.sessione;
