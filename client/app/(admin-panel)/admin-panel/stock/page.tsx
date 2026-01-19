import { ContentLayout } from "@/components/custom/admin-panel/contentLayout";
import AddStockForm from "./AddStockForm";
import {
  getProductColours,
  getStock,
  getCurrencies,
} from "@/lib/data";
import CustomSearchBar from "@/components/custom/admin-panel/customSearchBar";
import CustomPagination from "@/components/custom/admin-panel/customPagination";
import {
  Table,
  TableBody,
  TableCell,
  TableRow,
} from "@/components/ui/table";
import TableActions from "./TableActions";
import StyleNoImage from "@/app/(admin-panel)/admin-panel/stock/StyleNoImage";
import ExpandStockDetails from "./ExpandStockDetails";

const Stock = async (props: {
  searchParams: Promise<Record<string, string>>;
}) => {
  const searchParams = await props.searchParams;
  const currentPage = searchParams["cPage"]
    ? Number(searchParams["cPage"])
    : 1;
  const query = searchParams["q"] ?? "";

  const stock = await getStock({ page: currentPage, query });
  const colours = await getProductColours({});
  const currencies = await getCurrencies();

  const getColourBasedOnhex = (id: string) => {
    return colours.productColours.find(
      (c: any) => c.hexcode === id,
    )?.name;
  };

  return (
    <ContentLayout title="Stock">
      <div className="flex flex-col gap-6">
        {/* HEADER */}
        <div className="flex items-center justify-between">
          <h1 className="text-lg md:text-xl">Stock data</h1>

          <AddStockForm
            colours={colours.productColours}
            currencies={currencies?.currencies ?? currencies}
          />
        </div>

        <div className="space-y-3">
          <CustomSearchBar query={query} />

          {/* GRID */}
          <div className="grid grid-cols-1 gap-3 sm:grid-cols-2 md:grid-cols-3 xl:grid-cols-4 2xl:grid-cols-5">
            {stock.stock?.map((item: any) => {
              if (!item.product) return null;

              return (
                <div
                  key={item.id}
                  className="flex h-[420px] flex-col overflow-hidden rounded-md border shadow-sm"
                >
                  {/* IMAGE (REDUCED HEIGHT) */}
                  <div className="h-[230px] w-full bg-gray-50 flex items-center justify-center overflow-hidden object-cover">
                    <StyleNoImage details={item} />
                  </div>

                  {/* DETAILS */}
                  <div className="px-2 py-1 text-xs border-t flex-1">
                    {/* QTY + PRICE */}
                    <div className="flex items-center justify-between mb-1">
                      <span className="rounded bg-gray-100 px-1.5 py-0.5 font-medium">
                        Qty: {item.quantity}
                      </span>

                      <div className="flex gap-1">
                        <span
                          className={
                            item.price !== item.discountedPrice
                              ? "line-through text-gray-400"
                              : ""
                          }
                        >
                          €{item.price}
                        </span>

                        {item.price !== item.discountedPrice && (
                          <span className="font-semibold text-green-600">
                            €{item.discountedPrice}
                          </span>
                        )}
                      </div>
                    </div>

                    {/* TABLE */}
                    <Table className="text-xs">
                      <TableBody>
                        <TableRow>
                          <TableCell className="py-0.5 font-medium">
                            Size
                          </TableCell>
                          <TableCell className="py-0.5">
                            {item.size} ({item.size_country})
                          </TableCell>
                        </TableRow>

                        <TableRow>
                          <TableCell className="py-0.5 font-medium">
                            Mesh
                          </TableCell>
                          <TableCell className="py-0.5">
                            <div className="flex items-center gap-1.5">
                              <span
                                className="h-3 w-3 rounded-full"
                                style={{
                                  backgroundColor: item.mesh_color,
                                }}
                              />
                              {getColourBasedOnhex(item.mesh_color)}
                            </div>
                          </TableCell>
                        </TableRow>
                      </TableBody>
                    </Table>

                    <ExpandStockDetails
                      item={item}
                      beadingColourName={getColourBasedOnhex(
                        item.beading_color,
                      )}
                      liningColourName={getColourBasedOnhex(
                        item.lining_color,
                      )}
                    />
                  </div>

                  {/* ACTIONS (ALWAYS VISIBLE) */}
                  <div className="border-t">
                    <TableActions
                      data={item}
                      colours={colours.productColours}
                      currencies={currencies?.currencies ?? currencies}
                      edit
                      placeOrder={false}
                    />
                  </div>
                </div>
              );
            })}
          </div>

          <CustomPagination
            currentPage={currentPage}
            totalLength={stock?.totalCount}
          />
        </div>
      </div>
    </ContentLayout>
  );
};

export default Stock;
