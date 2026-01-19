import { Document, Page, View, Text, Image, StyleSheet } from "@react-pdf/renderer";

export default function LabelPdf({ item }: { item: any }) {
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
            <View style={styles.box}>
<Text style={styles.value}>EU {item.size}/{item.quantity}</Text>


            </View>

            <View style={styles.box}>
              <Text style={styles.value}>{item.color}</Text>
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

const styles = StyleSheet.create({
  page: {
    padding: 0,
    backgroundColor: "#FFFFFF",
  },

  container: {
    border: "1px solid #000000",
    height: "100%",
    backgroundColor: "#FFFFFF",
  },

  header: {
    backgroundColor: "#ffffffff",
    paddingVertical: 2,
    alignItems: "center",
  },
  headerText: {
    color: "#000000ff",
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
    alignItems: "center",
  },

  label: {
    fontSize: 6,
    color: "#000000",
    marginBottom: 1,
    fontWeight: "bold",
  },

  value: {
    fontSize: 9,
    fontWeight: "bold",
    color: "#000000",
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
    color: "#000000",
  },

  barcodeBlock: {
    alignItems: "center",
    marginBottom: 6,
  },

  scanText: {
    fontSize: 6,
    marginBottom: 2,
    color: "#000000",
    fontWeight: "bold",
  },

  barcode: {
    width: 120,
    height: 32,
  },

  footer: {
    backgroundColor: "#ffffffff",
    color: "#000000ff",
    fontSize: 6,
    flexDirection: "row",
    justifyContent: "space-between",
    paddingVertical: 3,
    paddingHorizontal: 4,
  },
});






// import { Document, Page, View, Text, Image } from "@react-pdf/renderer";

// export default function LabelPdf({ item }: { item: any }) {
//   return (
//     <Document>
//       <Page size={[150, 170]} style={{ padding: 8 }}>
//         <View style={{ border: "2px solid black" }}>
//           <Text style={{ borderBottom: "2px solid black", padding: 6, textAlign: "center", fontSize: 10 }}>
//             {item.styleNo}
//           </Text>

//           <Text style={{ borderBottom: "2px solid black", padding: 6, textAlign: "center", fontSize: 10 }}>
//             EU {item.size}/{item.quantity}
//           </Text>


//           <Text style={{ borderBottom: "2px solid black", padding: 6, textAlign: "center", fontSize: 10 }}>
//             {item.color}
//           </Text>

//           <Text style={{ borderBottom: "2px solid black", padding: 6, textAlign: "center", fontSize: 9 }}>
//             {item.purchaseOrderNo}
//           </Text>

//           {item.barcode && (
//             <View style={{ padding: 6, alignItems: "center" }}>
//               <Image
//                 src={`https://bwipjs-api.metafloor.com/?bcid=code128&text=${item.barcode}&scale=2&height=8&includetext=false`}
//                 style={{ width: 110, height: 35 }}
//               />
//             </View>
//           )}
//         </View>
//       </Page>
//     </Document>
//   );
// }