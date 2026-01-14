import { Document, Page, View, Text, Image, StyleSheet } from "@react-pdf/renderer";

export default function LabelPdf({ item }: { item: any }) {
  return (
    <Document>
      <Page size={[210, 320]} style={styles.page}>
        <View style={styles.container}>

          {/* STYLE NO */}
          <View style={styles.header}>
            <Text style={styles.headerText}>{item.styleNo}</Text>
          </View>

          {/* SIZE + COLOR */}
          <View style={styles.row}>
            <View style={styles.box}>
              <Text style={styles.label}>SIZE</Text>
              <Text style={styles.value}>{item.size}</Text>
            </View>

            <View style={styles.box}>
              <Text style={styles.label}>COLOR</Text>
              <Text style={styles.value}>{item.color}</Text>
            </View>
          </View>

          {/* PO */}
          <View style={styles.poBlock}>
            <Text style={styles.label}>PURCHASE ORDER</Text>
            <Text style={styles.poText}>{item.purchaseOrderNo}</Text>
          </View>

          {/* BARCODE */}
          {item.barcode && (
            <View style={styles.barcodeBlock}>
              <Text style={styles.scanText}>SCAN TO VERIFY</Text>

              <Image
                src={`https://bwipjs-api.metafloor.com/?bcid=code128&text=${encodeURIComponent(
                  item.barcode
                )}&scale=2&height=18&includetext=false`}
                style={styles.barcode}
              />

              <Text style={styles.verified}>✓ VERIFIED</Text>
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

const styles = StyleSheet.create({
  page: {
    padding: 10,
  },
  container: {
    border: "1px solid #000",
    height: "100%",
  },

  header: {
    backgroundColor: "#1f2937",
    padding: 8,
    alignItems: "center",
  },
  headerText: {
    color: "#fff",
    fontSize: 12,
    fontWeight: "bold",
  },

  row: {
    flexDirection: "row",
    justifyContent: "space-between",
    padding: 8,
  },
  box: {
    width: "48%",
    border: "1px solid #ccc",
    padding: 6,
    alignItems: "center",
  },

  label: {
    fontSize: 8,
    color: "#555",
    marginBottom: 2,
  },
  value: {
    fontSize: 11,
    fontWeight: "bold",
  },

  poBlock: {
    margin: 8,
    border: "1px solid #facc15",
    padding: 6,
    alignItems: "center",
  },
  poText: {
    fontSize: 10,
    fontWeight: "bold",
  },

  barcodeBlock: {
    marginTop: 10,
    alignItems: "center",
  },
  scanText: {
    fontSize: 8,
    marginBottom: 4,
  },
  barcode: {
    width: 160,
    height: 50,
  },
  verified: {
    fontSize: 8,
    marginTop: 4,
  },

  footer: {
    marginTop: "auto",
    backgroundColor: "#1f2937",
    color: "#fff",
    fontSize: 7,
    flexDirection: "row",
    justifyContent: "space-between",
    padding: 4,
  },
});
