import {
  Document,
  Page,
  View,
  Text,
  Image,
  StyleSheet,
} from "@react-pdf/renderer";

/* ================= COLOR MASTER (DB MIRROR) ================= */

const PRODUCT_COLORS: Record<string, string> = {
  "#FFF5EE": "Seashell",
  "#00FF00": "Green",
  "#FF7F50": "Coral",
  "#7FFFD4": "Aquamarine Jewel",
  "#BF8678": "224 - Dusty Rose",
  "#C49054": "904 - Gold",
  "#AF958A": "724 - Dusty Lavender",
  "#EDEDED": "906 - Ivory",
  "#A2AD48": "15 - Wasabi",
  "#A28871": "134D - Smoke Nude",
  "#000000": "908 - Black",
  "#B9B4B1": "885 - Grey",
  "#101938": "843 - Navy",
  "#DBD9D7": "32LL - Ultra Silver",
  "#603A37": "826 - Midnight Aubergine",
  "#D5B086": "901 - Nude",
  "#07180E": "30G - Forest Green",
  "#A69991": "252D - Smoke Grey",
  "#6F000F": "26 - Blood Red",
  "#8DA7BF": "121 - Steel Blue",
  "#DFBFBF": "28P - Baby Pink",
  "#BE9782": "709 - Pastel Rose",
  "#DF7292": "194 - Candy Pink",
  "#CC199D": "912 - Fuschia",
  "#B69CA7": "29D - Pastel Lilac",
  "#AA7BB7": "31 - Light Purple",
  "#3D1551": "42D - Midnight Purple",
  "#7F8EC7": "729 - Winkel",
  "#0E1565": "352 - Royal Blue",
  "#9EC201": "911 - Leaf Green",
  "#003A44": "395 - Teal",
  "#B3BFC1": "63L - Metallic Blue",
  "#D47013": "914 - Orange",
  "#D6D6D6": "Silver",
  "#B87D75": "719 - Salmon",
  "#E2A3B3": "215 - Raspberry Pink",
  "#C3A9C8": "28L - Bright Lavender",
  "#A78E91": "773 - Spicy Mauve",
  "#803900": "902 - DARK FAWN",
  "#B47350": "917 - LIGHT FAWN",
  "#174F03": "907 - EMERALD GREEN",
  "#F7F7F7": "101 - LUSTER WHITE",
  "#695D5D": "GUNMETAL",
  "#FBF4F4": "Silver - Luster",
  "#BDA8A8": "903 - Blush",
  "#B30F0F": "26B - Bead Red",
  "#061946": "31N - NAVY",
  "#EBEBEB": "932LL - SILVER",
  "#6F667F": "GREY",
  "#9A8484": "BLUSH/GREY",
  "#4CD4DD": "AQUA",
  "#2C5387": "mix",
  "#944C4C": "900 - Mocha",
  "#4682B4": "Steel Blue",
};

/* ================= COLOR RESOLVER ================= */

const resolveColor = (color?: string) => {
  if (!color) {
    return { name: "UNKNOWN COLOR", hex: "#FFFFFF" };
  }

  // If hex code
  if (color.startsWith("#")) {
    return {
      name: PRODUCT_COLORS[color.toUpperCase()] || "UNKNOWN COLOR",
      hex: color,
    };
  }

  // If already color name
  return {
    name: color,
    hex: "#FFFFFF",
  };
};

/* ================= PDF LABEL ================= */

export default function LabelPdf({ item }: { item: any }) {
  const { name: colorName, hex: colorHex } = resolveColor(item.color);

  return (
    <Document>
      <Page size={[125, 130]} style={styles.page}>
        <View style={styles.container}>

          {/* STYLE NO */}
          <View style={styles.header}>
            <Text style={styles.headerText}>{item.styleNo}</Text>
          </View>

          {/* SIZE + COLOR */}
          <View style={styles.row}>

            {/* SIZE */}
            <View style={styles.box}>
              <Text style={styles.value}>
                EU {item.size}/{item.quantity}
              </Text>
            </View>

            {/* COLOR */}
            <View style={styles.box}>
              <View style={styles.colorRow}>
                <View
                  style={[
                    styles.colorSwatch,
                    { backgroundColor: item.color?.startsWith("#") ? colorHex : "#FFFFFF" },
                  ]}
                />
                <Text style={styles.colorName}>
                  {colorName}
                </Text>
              </View>
            </View>

          </View>

          {/* PO */}
          <View style={styles.poBlock}>
            <Text style={styles.poText}>{item.purchaseOrderNo}</Text>
          </View>

          {/* BARCODE */}
          {item.barcode && (
            <View style={styles.barcodeBlock}>
              <Text style={styles.scanText}>SCAN</Text>
              <Image
                src={`https://bwipjs-api.metafloor.com/?bcid=code128&text=${encodeURIComponent(
                  item.barcode
                )}&scale=2&height=14&includetext=false`}
                style={styles.barcode}
              />
            </View>
          )}

          {/* FOOTER */}
          <View style={styles.footer}>
            <Text>Chic&Holland</Text>
            <Text>
              {new Date().toLocaleDateString("en-US", {
                month: "short",
                day: "2-digit",
                year: "numeric",
              })}
            </Text>
          </View>

        </View>
      </Page>
    </Document>
  );
}

/* ================= STYLES ================= */

const styles = StyleSheet.create({
  page: {
    padding: 0,
    backgroundColor: "#FFFFFF",
  },

  container: {
    border: "1px solid #000000",
    height: "100%",
  },

  header: {
    paddingVertical: 2,
    alignItems: "center",
  },
  headerText: {
    fontSize: 10,
    fontWeight: "bold",
  },

  row: {
    flexDirection: "row",
    justifyContent: "space-between",
    paddingVertical: 6,
    paddingHorizontal: 4,
  },

  box: {
    width: "48%",
    border: "1px solid #000000",
    padding: 4,
    justifyContent: "center",
  },

  value: {
    fontSize: 9,
    fontWeight: "bold",
    textAlign: "center",
  },

  /* COLOR */
  colorRow: {
    flexDirection: "row",
    alignItems: "center",
  },
  colorSwatch: {
    width: 10,
    height: 10,
    border: "1px solid #000000",
    marginRight: 4,
  },
  colorName: {
    fontSize: 4,
    fontWeight: "bold",
  },

  poBlock: {
    marginHorizontal: 6,
    marginBottom: 6,
    border: "1px solid #000000",
    padding: 4,
    alignItems: "center",
  },

  poText: {
    fontSize: 8,
    fontWeight: "bold",
  },

  barcodeBlock: {
    alignItems: "center",
    marginBottom: 6,
  },

  scanText: {
    fontSize: 6,
    marginBottom: 2,
    fontWeight: "bold",
  },

  barcode: {
    width: 120,
    height: 32,
  },

  footer: {
    fontSize: 6,
    flexDirection: "row",
    justifyContent: "space-between",
    paddingVertical: 3,
    paddingHorizontal: 4,
  },
});
