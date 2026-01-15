import Link from "next/link";

export default function Footer() {
  return (
    <footer className="bg-black w-full py-10 text-[#C9A39A]">
      <div className="flex flex-col items-center justify-center ">

        {/* --- TOP MENU ROW (3 COLUMNS) --- */}
        <div className="grid grid-cols-3 gap-20 text-center">

          {/* Column 1 */}
          <div className="flex flex-col gap-2 font-adornstoryserif tracking-wider">
            <Link href="/"><p className="text-lg ">HOME</p></Link>
            <Link href="/brand"><p className="text-lg hover:text-red-500">BRAND</p></Link>
            <Link href="/collections"><p className="text-lg hover:text-red-500">COLLECTIONS</p></Link>
          </div>

          {/* Column 2 */}
          <div className="flex flex-col gap-2 font-adornstoryserif tracking-wider">
            <Link href="/shows-and-events"><p className="text-lg hover:text-red-500">SHOWS/EVENTS</p></Link>
            <Link href="/find-a-store"><p className="text-lg hover:text-red-500">FIND A STORE</p></Link>
            <Link href="/size-chart"><p className="text-lg hover:text-red-500">SIZE CHART</p></Link>
          </div>

          {/* Column 3 */}
          <div className="flex flex-col gap-2 font-adornstoryserif tracking-wider">
            <Link href="/contact-us"><p className="text-lg hover:text-red-500" >CONTACT US</p></Link>
            <Link href="/become-a-retailer"><p className="text-lg hover:text-red-500">BECOME A RETAILER</p></Link>
            <Link href="/login"><p className="text-lg hover:text-red-500" >LOGIN</p></Link>
          </div>
        </div>

        {/* --- MIDDLE LOGO --- */}
        <img
          src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/CH%20Monogram_Rose%20Gold.png"
          className="w-[140px] md:w-[300px]"
          alt="Chic & Holland Logo"
        />

        {/* --- MAIN BRAND TITLE --- */}
        <img
          src="/brand-logo.png"
          className="w-[140px] md:w-[700px]"
          alt="Chic & Holland Logo"
        />
      </div>
    </footer>
  );
}
