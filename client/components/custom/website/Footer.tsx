import Link from "next/link";

export default function Footer() {
  return (
    <footer className="bg-black w-full py-10 text-[#C9A39A]">
      <div className="flex flex-col items-center justify-center ">

        {/* --- TOP MENU ROW (3 COLUMNS) --- */}
        <div className="grid grid-cols-3 gap-40 text-center">

          {/* Column 1 */}
          <div className="flex flex-col gap-2 text-center font-adornstoryserif tracking-wider">
            <Link href="/"><p className="text-lg ">HOME</p></Link>
            <Link href="/brand"><p className="text-lg hover:text-red-500">BRAND</p></Link>
            <Link href="/collections"><p className="text-lg hover:text-red-500">SHOWS/EVENTS</p></Link>
          </div>

          {/* Column 2 */}
          <div className="flex flex-col text-center gap-2 font-adornstoryserif tracking-wider">
            <Link href="/contact-us"><p className="text-lg hover:text-red-500">CONTACT US</p></Link>
            <Link href="/find-a-store"><p className="text-lg hover:text-red-500">FIND A STORE</p></Link>
            <Link href="/size-chart"><p className="text-lg hover:text-red-500">SIZE CHART</p></Link>
          </div>

          {/* Column 3 */}
          <div className="flex flex-col text-center gap-2 font-adornstoryserif tracking-wider">
            <div ><p className="text-lg hover:text-red-500" >FOLLOW US</p></div>
            <a href="https://www.facebook.com/chicandholland"><p className="text-lg hover:text-red-500">FACEBOOK</p></a>
            <a href="https://www.instagram.com/chicandholland/"><p className="text-lg hover:text-red-500" >INSTAGRAM</p></a>
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
