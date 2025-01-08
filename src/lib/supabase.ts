import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://azgdvoawdabonwsnrgzy.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF6Z2R2b2F3ZGFib253c25yZ3p5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzYyOTcwMjEsImV4cCI6MjA1MTg3MzAyMX0.rueaY-hMUCAgyUBbDk6GsFw8YxV0Dc5pQaMYPvSAdj8';

export const supabase = createClient(supabaseUrl, supabaseKey);