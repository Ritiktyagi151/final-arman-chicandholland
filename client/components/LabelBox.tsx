import { Document, Page, View, Text, Image } from "@react-pdf/renderer";

export default function LabelPdf({ item }: { item: any }) {
  return (
    <Document>
      <Page size={[160, 260]} style={{ padding: 8 }}>
        <View style={{ border: "2px solid black" }}>
          <Text style={{ borderBottom: "2px solid black", padding: 6, textAlign: "center", fontSize: 10 }}>
            {item.styleNo}
          </Text>

          <Text style={{ borderBottom: "2px solid black", padding: 6, textAlign: "center", fontSize: 10 }}>
            {item.size}
          </Text>

          <Text style={{ borderBottom: "2px solid black", padding: 6, textAlign: "center", fontSize: 10 }}>
            {item.color}
          </Text>

          <Text style={{ borderBottom: "2px solid black", padding: 6, textAlign: "center", fontSize: 9 }}>
            {item.purchaseOrderNo}
          </Text>

          {item.barcode && (
            <View style={{ padding: 6, alignItems: "center" }}>
              <Image
                src={`https://bwipjs-api.metafloor.com/?bcid=code128&text=${item.barcode}&scale=2&height=8&includetext=false`}
                style={{ width: 110, height: 35 }}
              />
            </View>
          )}
        </View>
      </Page>
    </Document>
  );
}