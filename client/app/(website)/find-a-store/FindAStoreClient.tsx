"use client";

import { useState } from "react";
import SearchAddressBox from "@/components/custom/map/SearchAddressBox";
import AllMaps from "@/components/custom/map/AllMaps";

export default function FindAStoreClient({ clientsData }) {
  const [searchLocation, setSearchLocation] = useState(null);
  const [filteredStores, setFilteredStores] = useState(clientsData.mapClients);
  const [selectedStore, setSelectedStore] = useState(null);

  const handleFilter = (text: string) => {
    if (!text) {
      setFilteredStores(clientsData.mapClients);
      setSelectedStore(null);
      return;
    }

    const t = text.toLowerCase();
    const results = clientsData.mapClients.filter((s) =>
      `${s.name} ${s.address} ${s.city_name} ${s.country}`
        .toLowerCase()
        .includes(t)
    );

    setFilteredStores(results);

    if (results.length > 0) {
      const firstResult = results[0];
      setSearchLocation({
        lat: parseFloat(firstResult.latitude),
        lng: parseFloat(firstResult.longitude),
      });
      setSelectedStore(firstResult);
    }
  };

  const handleStoreSelect = (store) => {
    setSelectedStore(store);
    setSearchLocation({
      lat: parseFloat(store.latitude),
      lng: parseFloat(store.longitude),
    });
  };

  return (
    <div className="w-full bg-gradient-to-br from-slate-50 to-gray-50 min-h-screen">

      {/* HEADER SECTION */}
      <div className="pt-2 pb-2 text-center bg-white/80 backdrop-blur-sm mt-5 md:mt-2 shadow-sm">
        <div className="max-w-2xl mx-auto px-4">
<h1 className="text-4xl font-bold tracking-tight font-adornstoryserif text-[40px] md:text-[40px] leading-[1.3] tracking-[0.4px] text-black mb-0 animated-text-block max-w-[95%] mt-1">
            OUR RETAILERS
          </h1>
          
        </div>
      </div>

      {/* MAIN CONTENT */}
      <div className="mt-8` grid grid-cols-1 lg:grid-cols-[380px_1fr] h-[calc(100vh-200px)] max-w-8xl mx-auto rounded-2xl overflow-hidden shadow-2xl border border-gray-200">

        {/* LEFT PANEL */}
        <div className="bg-white flex flex-col relative overflow-hidden">
          {/* Gradient Decoration */}
          <div className="absolute top-0 left-0 w-full h-1 bg-gradient-to-r from-gray-500 to-black-500"></div>
          
          {/* Search Section */}
          <div className="p-6 border-b border-gray-100 bg-white/95 backdrop-blur-sm">
            <SearchAddressBox
              onLocationSelect={(coords) => setSearchLocation(coords)}
              onFilter={handleFilter}
            />
          </div>

          {/* Results Count */}
          <div className="px-6 py-4 bg-black-50 border-b border-black-100">
            <p className="text-sm font-medium text-black-700">
              Found {filteredStores.length} {filteredStores.length === 1 ? 'store' : 'stores'}
            </p>
          </div>

          {/* Store List */}
          <div className="flex-1 overflow-y-auto custom-scrollbar">
            <div className="p-6 space-y-4">
              {filteredStores.map((store, index) => (
                <div
                  key={index}
                  className={`p-4 rounded-xl border-2 transition-all duration-300 cursor-pointer hover:shadow-lg group ${
                    selectedStore?.id === store.id
                      ? 'border-gray-500 bg-gray-50 shadow-md scale-[1.02]'
                      : 'border-gray-100 bg-white hover:border-gray-200'
                  }`}
                  onClick={() => handleStoreSelect(store)}
                >
                  <div className="flex items-start justify-between">
                    <div className="flex-1">
                      <h3 className="font-bold text-gray-900 group-hover:text-black-700 transition-colors text-lg">
                        {store.name}
                      </h3>
                      <div className="space-y-1 mt-2">
                        <p className="text-sm text-gray-600 flex items-center">
                          {/* <span className="w-4 h-4 mr-2"></span> */}
                          {store.address}
                        </p>
                        <p className="text-sm text-gray-600">
                          {store.city_name}, {store.country}
                        </p>
                        {/* <p className="text-sm text-gray-600 flex items-center">
                          <span className="w-4 h-4 mr-2">📞</span>
                          {store.phone || "No phone available"}
                        </p> */}
                      </div>
                    </div>
                    <div className={`w-3 h-3 rounded-full mt-1 transition-all ${
                      selectedStore?.id === store.id ? 'bg-black-500 scale-125' : 'bg-gray-300 group-hover:bg-gray-400'
                    }`}></div>
                  </div>
                  
                  <button
                    className="mt-3 text-black-600 text-sm font-medium hover:text-gray-800 transition-colors flex items-center group/btn"
                    onClick={(e) => {
                      e.stopPropagation();
                      handleStoreSelect(store);
                    }}
                  >
                    View on Map
                    <span className="ml-1 group-hover/btn:translate-x-1 transition-transform">→</span>
                  </button>
                </div>
              ))}
              
              {filteredStores.length === 0 && (
                <div className="text-center py-12">
                  <div className="w-16 h-16 mx-auto mb-4 text-gray-400"></div>
                  <h3 className="text-lg font-semibold text-gray-600 mb-2">No stores found</h3>
                  <p className="text-gray-500 text-sm">
                    Try adjusting your search terms or browse all locations
                  </p>
                </div>
              )}
            </div>
          </div>
        </div>

        {/* MAP SECTION */}
        <div className="h-full w-full relative bg-gray-100">
          <div className="absolute inset-0 rounded-r-2xl overflow-hidden">
            <AllMaps
              storeLocations={filteredStores}
              isAdminPanel={false}
              searchLocation={searchLocation}
              selectedStore={selectedStore}
            />
          </div>
        </div>
      </div>
    </div>
  );
}