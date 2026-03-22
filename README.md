# Sistem Gestiune Competitii Atletism

Sistem de baze de date relationale dezvoltat in **Oracle SQL** pentru administrarea competitiilor sportive, concurentilor si rezultatelor oficiale.

### Schema Bazei de Date (Diagrama E-R)
![Schema Bazei de Date](schema_bazei_de_date.png)

---

### Functionalitati Cheie
- **Arhitectura Relationala:** 8 tabele normalizate cu constrangeri de integritate (PK, FK, Check).
- **Logica de Business:**
  - Calcul automat varsta si categorisire pe grupe (Copii, Juniori, Adulti, Seniori).
  - Gestionare clasamente si medalii folosind functia `DECODE`.
  - Manipulare date complexe cu functii de tip `NVL2`, `MONTHS_BETWEEN` si `TRUNC`.
- **Obiecte SQL Implementate:** View-uri pentru filtrare, Indecsi pentru performanta, Secvente si Sinonime.

### Structura Repository (Fisiere SQL)
1. **01_Creare_Structura.sql** - Definirea tabelelor si a constrangerilor.
2. **02_Populare_Date.sql** - Scripturi pentru inserarea datelor de test.
3. **03_Interogari_si_Rapoarte.sql** - Select-uri complexe, join-uri si analize de date.
4. **04_Obiecte_Avansate.sql** - Implementare View-uri, Indecsi si Secvente.
