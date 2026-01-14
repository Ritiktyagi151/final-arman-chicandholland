import { API_URL } from "../../../../lib/constants";
import { cookies } from "next/headers";
import { ContentLayout } from "@/components/custom/admin-panel/contentLayout";
import { MarkAsReadButton } from "./mark-as-read-button.tsx";
import CustomSearchBar from "@/components/custom/admin-panel/customSearchBar";

type FilterType = "all" | "unread" | "today";

async function getContacts(filter: FilterType, search: string = "") {
  const token = (await cookies()).get("token")?.value || "";

  const res = await fetch(`${API_URL}/contactus`, {
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${token}`,
      cache: "no-store",
    },
  });

  const data = await res.json();
  let contacts = Array.isArray(data) ? data : data.data ?? [];

  // 🔍 Search (screenshot style)
  if (search) {
    const q = search.toLowerCase();
    contacts = contacts.filter(
      (c: any) =>
        c.name?.toLowerCase().includes(q) ||
        c.email?.toLowerCase().includes(q) ||
        c.subject?.toLowerCase().includes(q) ||
        c.message?.toLowerCase().includes(q)
    );
  }

  if (filter === "unread") return contacts.filter((c: any) => !c.isRead);
  if (filter === "today")
    return contacts.filter(
      (c: any) =>
        new Date(c.createdAt).toDateString() === new Date().toDateString()
    );

  return contacts;
}

export default async function ContactUsPage({ searchParams }: any) {
  const filter: FilterType = searchParams.filter || "all";
  const q = searchParams.q ? decodeURIComponent(searchParams.q) : "";

  const allContacts = await getContacts("all", q);
  const displayedContacts = await getContacts(filter, q);

  const unreadCount = allContacts.filter((c) => !c.isRead).length;
  const todayCount = allContacts.filter(
    (c) => new Date(c.createdAt).toDateString() === new Date().toDateString()
  ).length;

  return (
    <ContentLayout
      title={
        <span className="text-3xl font-bold text-white mb-3 font-serif tracking-wide">
          Enquiries
        </span>
      }
    >
      
      {/* Luxury Background with Animated Gradient */}
      <div className="min-h-screen bg-gradient-to-br from-slate-50 via-amber-50/30 to-rose-50/20 dark:from-slate-950 dark:via-amber-950/20 dark:to-rose-950/10 relative overflow-hidden">
        {/* Animated Background Elements */}
        <div className="absolute inset-0 overflow-hidden">
          <div className="absolute -top-40 -right-40 w-80 h-80 bg-gradient-to-br from-amber-200/40 to-rose-300/30 rounded-full blur-3xl animate-pulse"></div>
          <div className="absolute -bottom-40 -left-40 w-80 h-80 bg-gradient-to-tr from-rose-200/30 to-amber-300/20 rounded-full blur-3xl animate-pulse delay-1000"></div>
          <div className="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-96 h-96 bg-gradient-to-r from-amber-100/20 to-rose-100/10 rounded-full blur-3xl animate-pulse delay-500"></div>
        </div>

        <div className="relative z-10 p-4 md:p-6">
          <div className="max-w-7xl mx-auto">

             {/* 🔍 EXACT Screenshot Style Search Bar */}
            <div className="w-full flex items-center gap-2 mb-6">
              <div className="flex-1">
                <CustomSearchBar query={q} placeholder="Search enquiries..." />
              </div>
            </div>
            
            {/* Luxury Filter Tabs - Mobile */}
            <div className="lg:hidden mb-6">
              <div className="bg-white/80 dark:bg-slate-800/80 backdrop-blur-md rounded-2xl p-2 shadow-2xl border border-slate-200/50 dark:border-slate-700/50">
                <div className="flex space-x-2">
                  {[
                    { key: "all", label: "All", count: allContacts.length, gradient: "from-amber-400 to-amber-500" },
                    { key: "unread", label: "New", count: unreadCount, gradient: "from-rose-500 to-pink-600" },
                    { key: "today", label: "Today", count: todayCount, gradient: "from-emerald-500 to-teal-600" },
                  ].map((tab) => (
                    <a
                      key={tab.key}
                      href={`?filter=${tab.key}`}
                      className={`flex-1 text-center py-3 px-2 rounded-xl font-semibold transition-all duration-500 relative overflow-hidden group ${
                        filter === tab.key
                          ? "text-white shadow-2xl transform scale-105"
                          : "text-slate-600 dark:text-slate-400 hover:text-slate-800 dark:hover:text-white"
                      }`}
                    >
                      {/* Background Gradient */}
                      {filter === tab.key && (
                        <div className={`absolute inset-0 bg-gradient-to-r ${tab.gradient} rounded-xl`}></div>
                      )}
                      <div className="relative z-10">
                        {tab.label}
                        <span className={`ml-2 text-sm ${
                          filter === tab.key ? "text-white/90" : "text-slate-500 dark:text-slate-500"
                        }`}>
                          ({tab.count})
                        </span>
                      </div>
                    </a>
                  ))}
                </div>
              </div>
            </div>

            {/* Luxury Table Container */}
            <div className="bg-white/80 dark:bg-slate-800/80 backdrop-blur-xl rounded-3xl shadow-2xl overflow-hidden border border-slate-200/50 dark:border-slate-700/50 relative">
              
              {/* Decorative Header Border */}
              <div className="absolute top-0 left-0 right-0 h-1 bg-gradient-to-r from-amber-400 via-rose-500 to-purple-600"></div>
              
              {/* Luxury Table Header */}
              <div className="relative overflow-hidden">
                <div className="absolute inset-0 bg-gradient-to-r from-black via-gray-900 to-yellow-600 border border-yellow-500/50 backdrop-blur-sm shadow-[0_0_25px_rgba(255,215,0,0.5)]"></div>
                <div className="absolute inset-0 bg-black/10"></div>
                <div className="relative p-3">
                  <div className="flex flex-col md:flex-row md:items-center justify-between">
                    <div className="mb-4 md:mb-0">
                      <p className="text-amber-100/90 text-lg font-light">
                        TOTAL <span className="font-semibold text-white">{displayedContacts.length}</span> of{" "}
                        <span className="font-semibold text-white">{allContacts.length}</span> 
                      </p>
                    </div>
                    
                    {/* Luxury Filter Tabs - Desktop */}
                    <div className="hidden lg:flex space-x-3">
                      {[
                        { key: "all", label: "All Messages", gradient: "from-amber-400 to-amber-500" },
                        { key: "unread", label: "New Messages", gradient: "from-rose-500 to-pink-600" },
                        { key: "today", label: "Today", gradient: "from-emerald-500 to-teal-600" },
                      ].map((tab) => (
                        <a
                          key={tab.key}
                          href={`?filter=${tab.key}`}
                          className={`px-8 py-3 rounded-2xl font-semibold transition-all duration-500 backdrop-blur-md border-2 ${
                            filter === tab.key
                              ? `bg-gradient-to-r ${tab.gradient} text-white border-transparent shadow-2xl transform scale-105`
                              : "bg-white/10 text-amber-100 border-white/20 hover:bg-white/20 hover:text-white hover:scale-105"
                          }`}
                        >
                          {tab.label}
                        </a>
                      ))}
                    </div>
                  </div>
                </div>
              </div>

              {/* Luxury Table */}
              <div className="overflow-x-auto">
                <table className="min-w-full">
                  <thead>
                    <tr className="bg-gradient-to-r from-slate-50 to-slate-100 dark:from-slate-700 dark:to-slate-800 border-b border-slate-200 dark:border-slate-600">
                      <th className="p-4 text-left text-sm font-semibold text-slate-600 dark:text-slate-300 uppercase tracking-wider font-serif">
                        Contact
                      </th>
                      <th className="p-4 text-left text-sm font-semibold text-slate-600 dark:text-slate-300 uppercase tracking-wider font-serif">
                        Date
                      </th>
                      <th className="p-4 text-left text-sm font-semibold text-slate-600 dark:text-slate-300 uppercase tracking-wider font-serif hidden md:table-cell">
                        Message Details
                      </th>
                      <th className="p-4 text-left text-sm font-semibold text-slate-600 dark:text-slate-300 uppercase tracking-wider font-serif hidden lg:table-cell">
                        Location
                      </th>
                      <th className="p-4 text-left text-sm font-semibold text-slate-600 dark:text-slate-300 uppercase tracking-wider font-serif">
                        Status
                      </th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-slate-200/50 dark:divide-slate-700/50">
                    {displayedContacts.map((c: any, index: number) => (
                      <tr 
                        key={c.id} 
                        className={`group transition-all duration-500 ease-out animate-fadeInUp ${
                          !c.isRead
                            ? 'bg-gradient-to-r from-[#E6F7FF] via-[#D1EEFF] to-[#BDE5FF] dark:from-[#0A2647] dark:via-[#144272] dark:to-[#205295] border-l-4 border-l-[#0066FF] shadow-[0_4px_20px_-2px_rgba(0,102,255,0.3)] hover:shadow-[0_8px_30px_-5px_rgba(0,102,255,0.4)] hover:scale-[1.002]'
                            : 'hover:bg-gradient-to-r hover:from-slate-50/60 hover:to-slate-100/40 dark:hover:from-slate-800/60 dark:hover:to-slate-900/40'
                        }`}
                        style={{ animationDelay: `${index * 30}ms` }}
                      >
                        {/* Contact Name with Luxury Avatar - Enhanced for Unread */}
                        <td className="p-3">
                          <div className="flex items-center space-x-3">
                            {/* Avatar with Glowing Effect for Unread */}
                            <div className="relative">
                              <div className={`absolute inset-0 rounded-xl blur-md group-hover:blur-lg transition-all duration-500 ${
                                !c.isRead 
                                  ? 'bg-gradient-to-br from-[#4DA6FF] to-[#0066FF] opacity-70 animate-pulse'
                                  : 'bg-gradient-to-br from-amber-400 to-rose-500 opacity-70'
                              }`}></div>
                              <div className={`relative w-10 h-10 rounded-xl flex items-center justify-center shadow-xl group-hover:scale-110 transition-transform duration-300 border backdrop-blur-sm ${
                                !c.isRead 
                                  ? 'bg-gradient-to-r from-[#0066FF] via-[#4DA6FF] to-[#80BFFF] border-[#0066FF]/60'
                                  : 'bg-gradient-to-r from-black via-gray-900 to-yellow-600 border-yellow-500/30'
                              }`}>
                                <span className={`font-bold text-sm tracking-wide ${
                                  !c.isRead ? 'text-white' : 'text-white'
                                }`}>
                                  {c.name.charAt(0).toUpperCase()}
                                </span>
                              </div>
                              
                              {/* Unread Notification Dot */}
                              {!c.isRead && (
                                <div className="absolute -top-1 -right-1 w-3 h-3 bg-gradient-to-r from-red-500 to-pink-600 rounded-full border border-white shadow-lg animate-ping"></div>
                              )}
                            </div>

                            {/* Contact Info */}
                            <div className="min-w-0 flex-1">
                              <div className="flex items-center justify-between">
                                <p className={`font-semibold text-sm truncate transition-colors duration-300 ${
                                  !c.isRead 
                                    ? 'text-[#0066CC] dark:text-[#80BFFF]' 
                                    : 'text-slate-800 dark:text-slate-200 group-hover:text-amber-600 dark:group-hover:text-amber-400'
                                }`}>
                                  {c.name}
                                  {!c.isRead && (
                                    <span className="ml-2 inline-block w-2 h-2 bg-gradient-to-r from-red-500 to-pink-600 rounded-full animate-pulse"></span>
                                  )}
                                </p>
                                {/* Mobile Phone */}
                                <span className="md:hidden text-xs font-medium transition-colors duration-300 ${
                                  !c.isRead 
                                    ? 'text-[#0066CC]/80 dark:text-[#80BFFF]/80' 
                                    : 'text-slate-500 dark:text-slate-400'
                                }">
                                  {c.phoneNumber || "No phone"}
                                </span>
                              </div>
                              <p className="text-xs font-medium truncate mt-0.5 transition-colors duration-300 ${
                                !c.isRead 
                                  ? 'text-[#3399FF] dark:text-[#4DA6FF]' 
                                  : 'text-slate-600 dark:text-slate-400'
                              }">
                                {c.email}
                              </p>
                              <p className="text-xs line-clamp-1 mt-0.5 transition-colors duration-300 ${
                                !c.isRead 
                                  ? 'text-[#0066CC] font-bold dark:text-[#80BFFF]' 
                                  : 'text-slate-800 dark:text-slate-300 font-semibold'
                              }">
                                {c.subject}
                              </p>
                            </div>
                          </div>
                        </td>

                        {/* Date Column with Enhanced Unread Styling */}
                        <td className="p-3">
                          <div className="flex flex-col">
                            <p className={`text-sm font-semibold transition-colors duration-300 ${
                              !c.isRead 
                                ? 'text-[#0066CC] dark:text-[#80BFFF]' 
                                : 'text-slate-800 dark:text-slate-200'
                            }`}>
                              {new Date(c.createdAt).toLocaleDateString('en-US', { 
                                month: 'short', 
                                day: 'numeric',
                                year: 'numeric'
                              })}
                            </p>
                            <p className="text-xs font-medium transition-colors duration-300 ${
                              !c.isRead 
                                ? 'text-[#3399FF] dark:text-[#4DA6FF]' 
                                : 'text-slate-500 dark:text-slate-400'
                            }">
                              {new Date(c.createdAt).toLocaleTimeString([], { 
                                hour: '2-digit', 
                                minute: '2-digit',
                                hour12: true 
                              })}
                            </p>
                          </div>
                        </td>

                        {/* Desktop Message Details with Enhanced Unread Styling */}
                        <td className="p-3 hidden md:table-cell">
                          <div className="space-y-1.5">
                            {/* Phone Number */}
                            <div className="flex items-center space-x-2">
                              <span className="text-xs transition-colors duration-300 ${
                                !c.isRead 
                                  ? 'text-[#3399FF] dark:text-[#4DA6FF]' 
                                  : 'text-slate-500 dark:text-slate-400'
                              }">📱</span>
                              <p className={`text-sm font-medium transition-colors duration-300 ${
                                !c.isRead 
                                  ? 'text-[#0066CC] dark:text-[#80BFFF]' 
                                  : 'text-slate-700 dark:text-slate-300'
                              }`}>
                                {c.phoneNumber || "No phone provided"}
                              </p>
                            </div>
                            
                            {/* Message Preview */}
                            <div className="max-w-xs">
                              <p className="text-xs line-clamp-2 leading-relaxed transition-colors duration-300 ${
                                !c.isRead 
                                  ? 'text-[#3399FF] dark:text-[#4DA6FF]' 
                                  : 'text-slate-600 dark:text-slate-400'
                              }">
                                {c.message}
                              </p>
                              {c.message.length > 100 && (
                                <p className="text-xs font-medium mt-1 transition-colors duration-300 ${
                                  !c.isRead 
                                    ? 'text-[#0066FF] dark:text-[#80BFFF]' 
                                    : 'text-amber-500 dark:text-amber-400'
                                }">
                                  View full message →
                                </p>
                              )}
                            </div>
                          </div>
                        </td>

                        {/* Desktop Location with Enhanced Unread Styling */}
                        <td className="p-3 hidden lg:table-cell">
                          <div className="flex flex-wrap gap-2">
                            {c.country ? (
                              <span className={`px-2 py-1 text-xs rounded-full font-medium capitalize border transition-all duration-300 ${
                                !c.isRead 
                                  ? 'bg-gradient-to-r from-[#D1EEFF] to-[#E6F7FF] dark:from-[#144272] dark:to-[#205295] text-[#0066CC] dark:text-[#80BFFF] border-[#4DA6FF]/50 dark:border-[#4DA6FF]/30 hover:scale-105' 
                                  : 'bg-gradient-to-r from-slate-100 to-slate-200 dark:from-slate-700 dark:to-slate-600 text-slate-700 dark:text-slate-200 border-slate-300/50 dark:border-slate-600/50'
                              }`}>
                                {c.country}
                              </span>
                            ) : (
                              <span className="text-xs italic transition-colors duration-300 ${
                                !c.isRead 
                                  ? 'text-[#3399FF]/70 dark:text-[#4DA6FF]/70' 
                                  : 'text-slate-400 dark:text-slate-500'
                              }">No country</span>
                            )}
                            
                            {c.state && (
                              <span className={`px-2 py-1 text-xs rounded-full font-medium capitalize border transition-all duration-300 ${
                                !c.isRead 
                                  ? 'bg-gradient-to-r from-[#B3D9FF] to-[#C2E3FF] dark:from-[#1E3A8A] dark:to-[#1E40AF] text-[#0066CC] dark:text-[#80BFFF] border-[#3399FF]/50 dark:border-[#3399FF]/30 hover:scale-105' 
                                  : 'bg-gradient-to-r from-amber-100 to-amber-200 dark:from-amber-900/30 dark:to-amber-800/30 text-amber-700 dark:text-amber-300 border-amber-300/50 dark:border-amber-600/50'
                              }`}>
                                {c.state}
                              </span>
                            )}
                          </div>
                        </td>

                        {/* Status Column with Enhanced Actions for Unread */}
                        <td className="p-3">
                          <div className="flex flex-col items-start space-y-2">
                            {/* Status Badge with Enhanced Unread Design */}
                            {!c.isRead ? (
                              <div className="flex items-center space-x-2">
                                <span className="px-2.5 py-1 bg-gradient-to-r from-red-500 to-pink-600 text-white text-xs rounded-full font-medium border border-white/30 shadow-lg animate-pulse flex items-center gap-1">
                                  <span className="w-2 h-2 bg-white rounded-full animate-ping"></span>
                                  NEW
                                </span>
                                <MarkAsReadButton contactId={c.id} />
                              </div>
                            ) : (
                              <div className="flex items-center space-x-2">
                                <span className="px-2.5 py-1 bg-gradient-to-r from-emerald-100 to-teal-200 dark:from-emerald-900/40 dark:to-teal-900/40 text-emerald-700 dark:text-emerald-300 text-xs rounded-full font-medium border border-emerald-300/50 dark:border-emerald-700/50">
                                  Read
                                </span>
                                <button className="text-xs text-slate-500 dark:text-slate-400 hover:text-amber-600 dark:hover:text-amber-400 transition-colors">
                                  View
                                </button>
                              </div>
                            )}
                            
                            {/* Mobile Location Badges with Enhanced Unread Styling */}
                            <div className="flex flex-wrap gap-1 md:hidden">
                              {c.country && (
                                <span className={`px-1.5 py-0.5 text-[10px] rounded-full font-medium capitalize border transition-all duration-300 ${
                                  !c.isRead 
                                    ? 'bg-gradient-to-r from-[#D1EEFF] to-[#E6F7FF] text-[#0066CC] border-[#4DA6FF]/50' 
                                    : 'bg-gradient-to-r from-slate-100 to-slate-200 dark:from-slate-700 dark:to-slate-600 text-slate-700 dark:text-slate-200 border-slate-300/50 dark:border-slate-600/50'
                                }`}>
                                  {c.country}
                                </span>
                              )}
                              {c.state && (
                                <span className={`px-1.5 py-0.5 text-[10px] rounded-full font-medium capitalize border transition-all duration-300 ${
                                  !c.isRead 
                                    ? 'bg-gradient-to-r from-[#B3D9FF] to-[#C2E3FF] text-[#0066CC] border-[#3399FF]/50' 
                                    : 'bg-gradient-to-r from-amber-100 to-amber-200 dark:from-amber-900/30 dark:to-amber-800/30 text-amber-700 dark:text-amber-300 border-amber-300/50 dark:border-amber-600/50'
                                }`}>
                                  {c.state}
                                </span>
                              )}
                            </div>
                            
                            {/* Mobile Message Preview with Enhanced Unread Styling */}
                            <div className="md:hidden mt-1">
                              <p className={`text-xs line-clamp-1 transition-colors duration-300 ${
                                !c.isRead 
                                  ? 'text-[#3399FF]' 
                                  : 'text-slate-600 dark:text-slate-400'
                              }`}>
                                {c.message.substring(0, 50)}...
                              </p>
                            </div>
                          </div>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>

              {/* Luxury Empty State */}
              {displayedContacts.length === 0 && (
                <div className="text-center py-16">
                  <div className="relative inline-block mb-6">
                    <div className="absolute inset-0 bg-gradient-to-br from-slate-200 to-slate-300 dark:from-slate-700 dark:to-slate-600 rounded-3xl blur-md"></div>
                    <div className="relative w-24 h-24 bg-gradient-to-br from-slate-100 to-slate-200 dark:from-slate-600 dark:to-slate-700 rounded-3xl flex items-center justify-center border border-slate-300/50 dark:border-slate-600/50">
                      <span className="text-4xl">💫</span>
                    </div>
                  </div>
                  <h3 className="text-xl font-bold text-slate-600 dark:text-slate-400 mb-3 font-serif">
                    No Messages Found
                  </h3>
                  <p className="text-slate-500 dark:text-slate-500 max-w-md mx-auto text-sm leading-relaxed">
                    {filter === "all" 
                      ? "The inbox is currently empty. New customer inquiries will appear here." 
                      : `No ${filter} messages match your current luxury filter.`}
                  </p>
                </div>
              )}
            </div>

            {/* Luxury Footer */}
            <div className="mt-8 text-center">
              <div className="inline-flex items-center space-x-2 text-slate-500 dark:text-slate-400 text-xs">
                <span>✨</span>
                <span>Last updated: {new Date().toLocaleString()}</span>
                <span>✨</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </ContentLayout>
  );
}