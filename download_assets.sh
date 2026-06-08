#!/bin/bash
set -e
BASE="https://mundialhub.vercel.app"
DIR="/Users/gilberth/Documents/DEV/mundia"
cd "$DIR"

# Create directory structure
mkdir -p frontend/assets/{fonts,svg,flags/miniflags,flags/Qatarflags,flags/rusiaflags,flags/extraflags,flags/flags2006,qatar22,extracard,rusia18,2006,Shirt}
mkdir -p frontend/Generador/legal

echo "=== Downloading fonts ==="
for f in truly-26.otf Nombre2.ttf Apellido2.ttf nacimiento.ttf qatarfuente.ttf rusiafont.ttf tahoma.ttf tahomabd.ttf pais2006.ttf nombre2006.ttf fuente2.ttf; do
    echo "  Font: $f"
    curl -sL -o "frontend/assets/fonts/$f" "$BASE/frontend/assets/fonts/$f" || echo "    FAILED: $f"
done

echo "=== Downloading SVGs ==="
for f in 2.svg 6.svg marco.svg marcobandera.svg marco6.svg medio.svg rectAR.svg rectAB.svg logofifa.svg panini.svg fifa2.svg marcoextra.svg logofifa3.svg logoqatar.svg logorusia.svg logo2006.svg logobrasil.svg loader-anim.svg; do
    echo "  SVG: $f"
    curl -sL -o "frontend/assets/svg/$f" "$BASE/frontend/assets/svg/$f" || echo "    FAILED: $f"
done

echo "=== Downloading root assets ==="
for f in fondogold.webp marcogold.webp favicon.png og-preview.webp extra.png extra22.png; do
    echo "  Asset: $f"
    curl -sL -o "frontend/assets/$f" "$BASE/frontend/assets/$f" || echo "    FAILED: $f"
done

echo "=== Downloading Qatar 2022 layers ==="
for f in fondonaranja.png fondoazul.png arquero.png defensa.png medio.png delantero.png abajo.png logo.png peso.png altura.png abajotap.png abajotap2.png MarcoQatarSolo.png; do
    echo "  Qatar: $f"
    curl -sL -o "frontend/assets/qatar22/$f" "$BASE/frontend/assets/qatar22/$f" || echo "    FAILED: $f"
done

echo "=== Downloading Extra Card layers ==="
for f in fondovioleta.png fondobronce.png fondoplata.png fondoro.png extrasticker.png rectangulo.png marco.png; do
    echo "  Extra: $f"
    curl -sL -o "frontend/assets/extracard/$f" "$BASE/frontend/assets/extracard/$f" || echo "    FAILED: $f"
done

echo "=== Downloading Rusia 2018 layers ==="
for f in fondo.png Marco.png marco1.png logorusia.png posicion.png textos.png flagmask.png bandera.png; do
    echo "  Rusia: $f"
    curl -sL -o "frontend/assets/rusia18/$f" "$BASE/frontend/assets/rusia18/$f" || echo "    FAILED: $f"
done

echo "=== Downloading Germany 2006 layers ==="
for f in fondo.webp costado.webp cosito_abajo.webp cosito_arriba.webp cositomedio.webp cositoabajo2.webp logo.svg marco.webp bandera.png; do
    echo "  2006: $f"
    curl -sL -o "frontend/assets/2006/$f" "$BASE/frontend/assets/2006/$f" || echo "    FAILED: $f"
done

# All unique country codes across all editions
ALL_CODES="MEX RSA KOR CZE CAN BIH QAT SUI BRA MAR HAI SCO USA PAR AUS TUR GER CUW CIV ECU NED JPN SWE TUN BEL EGY IRI NZL ESP CPV KSA URU FRA SEN IRQ NOR ARG ALG AUT JOR POR COD UZB COL ENG CRO GHA PAN VEN IRL ITA POL CHI BOL RUS CRC HON WAL CMR DEN PER ISL NGA SRB TRI ANG TOG UKR"

echo "=== Downloading miniflags ==="
for code in $ALL_CODES; do
    curl -sL -o "frontend/assets/flags/miniflags/$code.png" "$BASE/frontend/assets/flags/miniflags/$code.png" 2>/dev/null || true
done
echo "  Done ($(ls frontend/assets/flags/miniflags/*.png 2>/dev/null | wc -l) files)"

echo "=== Downloading shirts (webp) ==="
for code in $ALL_CODES; do
    curl -sL -o "frontend/assets/Shirt/$code.webp" "$BASE/frontend/assets/Shirt/$code.webp" 2>/dev/null || true
done
echo "  Done ($(ls frontend/assets/Shirt/*.webp 2>/dev/null | wc -l) files)"

echo "=== Downloading large flags (PNG) ==="
for code in $ALL_CODES; do
    curl -sL -o "frontend/assets/flags/$code.png" "$BASE/frontend/assets/flags/$code.png" 2>/dev/null || true
done
echo "  Done ($(ls frontend/assets/flags/*.png 2>/dev/null | wc -l) files)"

echo "=== Downloading Qatar flags ==="
for code in QAT ECU SEN NED ENG IRI USA WAL ARG KSA MEX POL FRA AUS DEN TUN ESP CRC GER JPN BEL CAN MAR CRO BRA SRB SUI CMR POR GHA URU KOR; do
    curl -sL -o "frontend/assets/flags/Qatarflags/$code.png" "$BASE/frontend/assets/flags/Qatarflags/$code.png" 2>/dev/null || true
done
echo "  Done ($(ls frontend/assets/flags/Qatarflags/*.png 2>/dev/null | wc -l) files)"

echo "=== Downloading Rusia flags ==="
for code in RUS KSA EGY URU POR ESP MAR IRI FRA AUS PER DEN ARG ISL CRO NGA BRA SUI CRC SRB GER MEX SWE KOR BEL PAN TUN ENG POL SEN COL JPN; do
    curl -sL -o "frontend/assets/flags/rusiaflags/$code.png" "$BASE/frontend/assets/flags/rusiaflags/$code.png" 2>/dev/null || true
done
echo "  Done ($(ls frontend/assets/flags/rusiaflags/*.png 2>/dev/null | wc -l) files)"

echo "=== Downloading Extra flags ==="
for code in $ALL_CODES; do
    curl -sL -o "frontend/assets/flags/extraflags/$code.png" "$BASE/frontend/assets/flags/extraflags/$code.png" 2>/dev/null || true
done
echo "  Done ($(ls frontend/assets/flags/extraflags/*.png 2>/dev/null | wc -l) files)"

echo "=== Downloading 2006 flags ==="
for code in GER CRC POL ECU ENG PAR TRI SWE ARG CIV SRB NED MEX IRI ANG POR ITA GHA USA CZE BRA CRO AUS JPN FRA KOR TOG SUI ESP UKR TUN KSA; do
    curl -sL -o "frontend/assets/flags/flags2006/$code.png" "$BASE/frontend/assets/flags/flags2006/$code.png" 2>/dev/null || true
done
echo "  Done ($(ls frontend/assets/flags/flags2006/*.png 2>/dev/null | wc -l) files)"

echo "=== Downloading legal pages ==="
curl -sL -o "frontend/Generador/legal/privacidad.html" "$BASE/frontend/Generador/legal/privacidad.html" 2>/dev/null || true
curl -sL -o "frontend/Generador/legal/terminos.html" "$BASE/frontend/Generador/legal/terminos.html" 2>/dev/null || true

echo ""
echo "=== DOWNLOAD COMPLETE ==="
echo "Total files: $(find frontend -type f | wc -l)"
echo "Total size: $(du -sh frontend | cut -f1)"
