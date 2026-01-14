// import { CustomizedImage } from "@/components/custom/CustomizedImage";
// import { getSponsors } from "@/lib/data";
// import SponserImages from "./SponserImages";

// const BrandPage = async () => {
//   const { sponsor } = await getSponsors({});

//   return (
//     <div>
//       <div>
//        <div className="container relative flex flex-col justify-between gap-8 py-8 md:flex-row">

//   {/* LEFT SIDE — TEXT + LOGO WATERMARK */}
//   <div className="flex flex-col md:w-[70%] md:justify-center 3xl:w-[80%] relative">

//     {/* LEFT SIDE WATERMARK LOGO (behind text) */}
//    <div className="hidden md:block absolute 
//      left-1/2 -translate-x-1/2 
//      top-1/2 -translate-y-1/2 
//      z-[-1] h-[600px] opacity-[0.1] 
//      md:w-[40%] 2xl:w-[35%] 3xl:w-[30%]">
//   <CustomizedImage
//     src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/CH%20Monogram_Rose%20Gold.png"
//     alt="logo"
//     unoptimized
//   />
// </div>



//     {/* DESKTOP TEXT */}
//     <p className="hidden md:block font-mysi text-lg leading-8 md:text-justify md:text-xl 2xl:text-2xl 3xl:pl-20 3xl:pr-32 3xl:text-4xl 4xl:pl-32 4xl:pr-56 4xl:text-4xl">
//       Faiza Talat founded chic & holland in 2015, realizing a childhood
//       dream of bringing her vision exquisitely crafted dresses to the
//       world. Based in the Netherlands, chic & holland designs and
//       manufactures luxurious, hand-crafted dresses for every special
//       occasion in a woman's life. Each collection is dedicated to the
//       purity of couture-of color, texture and refined embellishment
//       details. Our dresses are filled with endless mesmerizing, delicate
//       patterns of embellishments imposing a perfectly glamorous silhouette
//       to the indescribable magic of colors. Each dress is handmade in our
//       own atelier, passing through at least 25 pairs of hands from start
//       to finish — ensuring unparalleled quality and craftsmanship.
//     </p>

//     {/* MOBILE TEXT */}
//     <div className="block relative md:hidden">
//       <p className="font-mysi text-lg leading-8">
//         Faiza Talat founded chic & holland in 2015...
//       </p>
//       <p className="my-4 font-mysi text-lg leading-8">
//         Each collection is dedicated to the purity...
//       </p>
//       <p className="font-mysi text-lg leading-8">
//         Each dress is handmade with unparalleled quality...
//       </p>

//       {/* MOBILE WATERMARK */}
//       <div className="absolute z-[-1] top-10 left-0 h-full opacity-[0.1] w-full">
//         <CustomizedImage
//           src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/CH%20Monogram_Rose%20Gold.png"
//           alt="logo"
//           unoptimized
//         />
//       </div>
//     </div>

//   </div>

//   {/* RIGHT SIDE — MAIN IMAGE */}
//   <div className="h-[600px] md:w-[40%] lg:w-[30%] 3xl:w-[20%]">
//     <CustomizedImage
//       src="/faiza-falat.jpeg"
//       alt="Faiza Talat"
//       unoptimized
//     />
//   </div>

// </div>

//       </div>

//       <div className="bg-black text-primary-foreground">
//         <div className="container flex flex-col gap-12 py-12">
//           <div className="flex flex-col items-center gap-2 text-center">
//             <h2 className="font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
//               THE LABEL
//             </h2>
//             <div className={"w-full md:w-[40%]"}>
//               <CustomizedImage
//                 src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/CH%20Monogram_Rose%20Gold.png"
//                 alt="Choices"
//                 unoptimized
//               />
//             </div>
//             <p className="mt-9 w-[70%] font-mysi md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//               Women's wear label headquartered in the Netherlands that creates,
//               manufactures, and distributes hand-crafted, high-end gowns for
//               special events. Chic & Holland have more than 150 authorized
//               retailers within 25 countries.
//             </p>
//           </div>
//           <div className="flex flex-col items-center gap-2 text-center">
//             <h2 className="font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
//               CHOICES
//             </h2>
//             <div className={"w-full md:w-[40%]"}>
//               <CustomizedImage
//                 src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/B406-38-PaperFinish.png"
//                 alt="Choices"
//                 unoptimized
//               />
//             </div>
//             <p className="w-[70%] font-mysi md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//               The captivating, delicate patterns of embellishment impose a
//               breathtaking silhouette to the ineffable enchantment of hues in
//               these handcrafted evening dresses. The label also has a bespoke
//               range where you may create your own special day gown.
//             </p>
//           </div>

//           <div className="grid grid-cols-1 gap-4 md:grid-cols-3">
//             <CustomizedImage
//               src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image2.webp"
//               alt="Choices"
//               unoptimized
//             />
//             <CustomizedImage
//               src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image3.webp"
//               alt="Choices"
//               unoptimized
//             />
//             <CustomizedImage
//               src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image4.webp"
//               alt="Choices"
//               unoptimized
//             />
//           </div>

//           <div className="flex flex-col items-center gap-2 text-center">
//             <h2 className="font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
//               CRAFTMANSHIP
//             </h2>
//             <p className="w-[70%] font-mysi md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//               Each Season one-of-a-kind design is created with special care at
//               their own Atelier. A single silhouette can take up to hundreds of
//               man-hours to complete, ensuring delivery within the time frame.
//               The design team themselves seeks out the high-quality raw
//               materials and the proper implementation of each design.
//             </p>
//           </div>

//           <video
//             src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/chick&.mov"
//             autoPlay={true}
//             muted={true}
//             loop={true}
//             playsInline={true}
//             controlsList="nodownload"
//             className="m-0 h-full p-0"
//           ></video>

//           <div className="flex flex-col items-center gap-2 text-center">
//             <h2 className="font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
//               OFFICIAL SPONSOR
//             </h2>
//             <p className="w-[70%] font-mysi md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//               Chic & Holland partnered with MISS WORLD NETHERLANDS and the MISS
//               NETHERLANDS show to design gowns for participants and other
//               celebrities.
//             </p>
//           </div>

//           {/* <div className="grid grid-cols-1 gap-4 md:grid-cols-3"> */}
//           <SponserImages sponsor={sponsor} />

//           {/* <div className="flex flex-col items-center gap-2">
//               <CustomizedImage
//                 src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image5.webp"
//                 alt="Miss Netherlands 2019"
//                 unoptimized
//               />
//               <p className={"text-center"}>
//                 Sharon Pieksms crowned Miss Netherlands 2019
//               </p>
//             </div>
//             <div className="flex flex-col items-center gap-2">
//               <CustomizedImage
//                 src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image6.webp"
//                 alt="Miss Denmark 2021"
//                 unoptimized
//               />
//               <p className={"text-center"}>
//                 Johanne Grundt crowned Miss Denmark 2021
//               </p>
//             </div>
//             <div className="flex flex-col items-center gap-2">
//               <CustomizedImage
//                 src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image7.webp"
//                 alt="Miss Denmark 2021"
//                 unoptimized
//               />
//               <p className={"text-center"}>
//                 Eliza Joanne de Jong crowned MISS INTERNATIONAL NETHERLAND 2019
//               </p>
//             </div> */}
//           {/* </div> */}
//         </div>
//       </div>

//       <div className="space-y-12 py-8">
//         <div className="bg-black py-2">
//           <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
//             DISCOVER THE AESTHETIC OF THE HOUSE
//           </h2>
//         </div>

//         <div className="container space-y-24">
//           <div className="flex flex-col gap-8 md:flex-row md:justify-between">
//             <div className="md:w-[50%]">
//               <CustomizedImage
//                 src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/41749c84-03e6-4a9e-894a-ecdfde95f634.jpeg"
//                 alt="Chic & Holland - Brand page images"
//                 unoptimized
//               />
//             </div>
//             <div className="flex flex-col gap-8 md:w-[70%] md:justify-center">
//               <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] underline 3xl:text-3xl 4xl:text-5xl">
//                 WORLD
//               </h2>
//               <p className="text-center font-mysi text-lg leading-8 md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//                 The Chic & Holland Design Team is at the core of the brand. They
//                 seek innovation, high-quality raw materials, and the proper
//                 implementation of each proposal., Each silhouette goes through
//                 multiple phases and includes a lot of fine details.
//               </p>
//               <p className="text-center font-mysi text-lg leading-8 md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//                 The following sections make up the manufacturing process:
//                 Creative Design, Pattern Department, Sewing Unit, Handmade
//                 ornamentation Department, 1st Stage- Quality Control, End Stage,
//                 and Final Quality Control.
//               </p>
//               <p className="text-center font-mysi text-lg leading-8 md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//                 In collaboration with the Sales and Production teams, the Design
//                 Department meticulously plans the design of every CHIC & HOLLAND
//                 Dress. All gowns are made in a specified and regulated manner,
//                 with care and love applied at all stages.
//               </p>
//             </div>
//           </div>

//           {/* <div className="flex flex-col gap-12">
//             <h2 className="text-center font-prata text-2xl text-[#C9A39A] underline">
//               CLASSIC MEET COMTEMPORARY
//             </h2>
//             <div className="flex flex-col gap-8 md:flex-row md:justify-between">
//               <div className="flex flex-col gap-8 md:w-[70%] md:justify-center">
//                 <p className="text-center font-mysi text-lg leading-8">
//                   A quick look through the Chic and Holland collections reveals
//                   gown after gown meant to make a woman feel like a tall glass
//                   of beauty. The collection's color palette, extravagant
//                   detailing, and neckline or décolletage decorations are what
//                   make it modern.
//                 </p>
//                 <p className="text-center font-mysi text-lg leading-8">
//                   Chic and Holland woman is tough, elegant and sophisticated.
//                   She knows what she wants and dresses for herself. She believes
//                   in timeless elegance which can be worn to any event rather
//                   than trendy pieces which will only last a season or two. She
//                   cares about the quality and attention to detail.
//                 </p>
//               </div>
//               <div className="md:w-[50%]">
//                 <CustomizedImage
//                   src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/0C4A5447%20copy.jpg"
//                   alt="Chic & Holland - Brand page images"
//                   unoptimized
//                 />
//               </div>
//             </div>
//           </div> */}

//           <div className="flex flex-col gap-8 md:flex-row md:justify-between">
//             <div className="flex flex-col gap-8 md:w-[70%] md:justify-center">
//               <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] underline 3xl:text-3xl 4xl:text-5xl">
//                 CLASSIC MEET CONTEMPORARY
//               </h2>
//               <p className="text-center font-mysi text-lg leading-8 md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//                 A quick look through the Chic and Holland collections reveals
//                 gown after gown meant to make a woman feel like a tall glass of
//                 beauty. The collection's color palette, extravagant detailing,
//                 and neckline or décolletage decorations are what make it modern.
//               </p>
//               <p className="text-center font-mysi text-lg leading-8 md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//                 Chic and Holland woman is tough, elegant and sophisticated. She
//                 knows what she wants and dresses for herself. She believes in
//                 timeless elegance which can be worn to any event rather than
//                 trendy pieces which will only last a season or two. She cares
//                 about the quality and attention to detail.
//               </p>
//             </div>
//             <div className="md:w-[50%]">
//               <CustomizedImage
//                 src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/0C4A5447%20copy.jpg"
//                 alt="Chic & Holland - Brand page images"
//                 unoptimized
//               />
//             </div>
//           </div>

//           <div className="flex flex-col gap-8 md:flex-row md:justify-between">
//             <div className="md:w-[50%]">
//               <CustomizedImage
//                 src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/0C4A5809%20copy.jpg"
//                 alt="Chic & Holland - Brand page images"
//                 unoptimized
//               />
//             </div>
//             <div className="flex flex-col gap-8 md:w-[70%] md:justify-center">
//               <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] underline 3xl:text-4xl 4xl:text-5xl">
//                 TIMELESS ELEGANCE
//               </h2>
//               <p className="text-center font-mysi text-lg leading-8 md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//                 Our aim at Chic & Holland is to design and make dresses that
//                 will never go out of fashion - something that our discerning
//                 customers will be able to enjoy and appreciate for many years to
//                 come. The colour palette, the modern fabrics, the extravagant
//                 detailing and the classic silhouette when used together lend a
//                 very contemporary air to our collections.
//               </p>
//               <p className="text-center font-mysi text-lg leading-8 md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//                 The Chic & Holland woman is tough, elegant and sophisticated.
//                 She knows what she wants and dresses for herself! She
//                 appreciates the finer details and the effort that goes into a
//                 high-quality handmade garment.
//               </p>
//             </div>
//           </div>

//           <div className="flex flex-col gap-8 md:flex-row md:justify-between">
//             <div className="flex flex-col gap-8 md:w-[70%] md:justify-center">
//               <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] underline 3xl:text-4xl 4xl:text-5xl">
//                 TRULY HANDMADE
//               </h2>
//               <p className="text-center font-mysi text-lg leading-8 md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//                 We consider ourselves guardians of this craft! In a world where
//                 things are increasingly being made by machines, we choose to
//                 painstakingly make all of our dresses by hand, at our own
//                 atelier - something very few brands can truly claim. The
//                 craftsmen who've chosen to work with us have been engaged in
//                 this craft for decades which helps us maintain the highest
//                 quality, consistently.
//               </p>
//               <p className="text-center font-mysi text-lg leading-8 md:text-xl 2xl:text-2xl 3xl:text-4xl 4xl:text-4xl">
//                 Our dresses can take hundreds of man-hours to produce, because
//                 we'd want nothing but the very best for our customers.
//               </p>
//             </div>
//             <div className="md:w-[50%]">
//               <CustomizedImage
//                 src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/0C4A5674%20copy.jpg"
//                 alt="Chic & Holland - Brand page images"
//                 unoptimized
//               />
//             </div>
//           </div>
//           {/* 
//           <div className="flex flex-col gap-12">
//             <h2 className="text-center font-prata text-2xl text-[#C9A39A] underline">
//               TRULY HANDMADE
//             </h2>
//             <div className="flex flex-col items-center gap-8 md:flex-row md:justify-between">
//               <div className="flex flex-col gap-8 md:w-[70%] md:justify-center">
//                 <p className="text-center font-mysi text-lg leading-8">
//                   We consider ourselves guardians of this craft! In a world
//                   where things are increasingly being made by machines, we
//                   choose to painstakingly make all of our dresses by hand, at
//                   our own atelier - something very few brands can truly claim.
//                   The craftsmen who've chosen to work with us have been engaged
//                   in this craft for decades which helps us maintain the highest
//                   quality, consistently.
//                 </p>
//                 <p className="text-center font-mysi text-lg leading-8">
//                   Our dresses can take hundreds of man-hours to produce, because
//                   we'd want nothing but the very best for our customers.
//                 </p>
//               </div>
//               <div className="md:w-[40%]">
//                  <video
//                   src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/optimized-videos/5.mp4"
//                   autoPlay={true}
//                   muted={true}
//                   loop={true}
//                   playsInline={true}
//                   controlsList="nodownload"
//                   className="m-0 h-full w-full bg-black object-fill p-0 xl:!h-[500px]"
//                 ></video> 
//                 <CustomizedImage
//                   src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/0C4A5674%20copy.jpg"
//                   alt="Chic & Holland - Brand page images"
//                   unoptimized
//                 />
//               </div>
//             </div>
//           </div> */}

//           {/* <div className="flex flex-col gap-12">
//             <h2 className="text-center font-prata text-2xl">
//               SOPHISTICATED SELECTIONS
//             </h2>

//             <div className="flex flex-col items-center gap-2 space-y-2">
//               <div className="h-[600px]">
//                 <CustomizedImage
//                   src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image11.webp"
//                   alt="Chic & Holland - Brand page images"
//                   unoptimized
//                 />
//               </div>

//               <div className="flex flex-col gap-8">
//                 <p className="text-center text-lg leading-8">
//                   Evening attire Aesthetics of chic and Holland have a number of
//                   characteristics. The first of which is the fit of the dresses
//                   is fairly column-like, emphasizing sheath. These designs help
//                   to lengthen the body, making it appear taller and thinner, by
//                   employing patterns as well as the color all the way up and
//                   down in a straight vertical line. Many dresses include a short
//                   sweep train, which lends a silky, seductive touch to the
//                   design. Including ornamentation around the torso, upper arms,
//                   or neck, which makes them look more modern and draw attention.
//                 </p>
//                 <p className="text-center text-lg leading-8">
//                   Prices are subject to design and production. for bespoke
//                   embellishment Work, the price depends upon embellishing
//                   materials, complexity, size, and design time
//                 </p>
//               </div>
//             </div>
//           </div> */}
//         </div>
//       </div>
//     </div>
//   );
// };

// export default BrandPage;

"use client";

import { CustomizedImage } from "@/components/custom/CustomizedImage";
import { getSponsors } from "@/lib/data";
import SponserImages from "./SponserImages";
import HeroAnimated from "./HeroAnimated";
import { useState, useEffect, useRef } from "react";

export default function BrandPage() {
  const sectionsRef = useRef<(HTMLDivElement | null)[]>([]);
  const imagesRef = useRef<(HTMLImageElement | null)[]>([]);
  const videoRef = useRef<HTMLVideoElement | null>(null);

  // State to store sponsor data (client-side)
  const [sponsor, setSponsor] = useState<any[]>([]);

  // Fetch sponsors on mount
  useEffect(() => {
    const fetchSponsors = async () => {
      const { sponsor } = await getSponsors({});
      setSponsor(sponsor);
    };
    fetchSponsors();
  }, []);

  // Animation Observer
  useEffect(() => {
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            entry.target.classList.add("animate-in");
          }
        });
      },
      {
        threshold: 0.1,
        rootMargin: "0px 0px -50px 0px",
      }
    );

    sectionsRef.current.forEach((section) => {
      if (section) observer.observe(section);
    });

    imagesRef.current.forEach((image) => {
      if (image) observer.observe(image);
    });

    if (videoRef.current) {
      videoRef.current
        .play()
        .catch(() => {
          if (videoRef.current) {
            videoRef.current.muted = true;
            videoRef.current.play();
          }
        });
    }

    return () => observer.disconnect();
  }, []);

  const addToSectionsRef = (el: HTMLDivElement | null) => {
    if (el && !sectionsRef.current.includes(el)) {
      sectionsRef.current.push(el);
    }
  };

  const addToImagesRef = (el: HTMLImageElement | null) => {
    if (el && !imagesRef.current.includes(el)) {
      imagesRef.current.push(el);
    }
  };

  return (
    <div className="bg-black text-white">
      {/* Hero Section */}
      <div>
        <div className="container relative flex flex-col justify-between gap-8 py-8 md:flex-row">
          <div>
            <HeroAnimated />
              <div className="flex flex-col items-center py-10 rounded-2xl bg-[#050505] shadow-xl">

  {/* Quote Icon */}
  <span className="text-6xl text-[#876355] mb-6 leading-none">❝</span>

  {/* Quote Text */}
  <p className="text-2xl md:text-2xl lg:text-2xl font-light italic text-gray-100 leading-snug text-center max-w-5xl mx-auto px-4">
    "Every dress tells a story of elegance, craftsmanship, and the dreams of the woman who wears it."
  </p>

  {/* Author */}
  <p className="font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
                — Faiza Talat
              </p>
</div>

            
          </div>
          
        </div>
      </div>

      {/* Main Content */}
      <div className="bg-black text-primary-foreground">
        <div className="container flex flex-col gap-12 py-12">
          {/* THE LABEL Section */}
          <div
            ref={addToSectionsRef}
            className="flex flex-col items-center gap-2 text-center opacity-0 translate-y-10 transition-all duration-700 ease-out"
          >
            <h2 className="font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
              THE LABEL
            </h2>
            <div className="w-full md:w-[40%] opacity-0 scale-90 transition-all duration-800 ease-out">
              <CustomizedImage
                src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/CH%20Monogram_Rose%20Gold.png"
                alt="Choices"
                unoptimized
                ref={addToImagesRef}
              />
            </div>
            <p className="mx-auto max-w-[80%] text-left font-adornstoryserif text-base leading-7 md:text-md 2xl:text-xl 3xl:text-2xl 4xl:text-2xl text-white normal-case tracking-normal font-premium-bold font-outline-bold opacity-0 translate-y-6 transition-all duration-700 ease-out delay-300">
              Women's wear label headquartered in the Netherlands that creates,
              manufactures, and distributes hand-crafted, high-end gowns for
              special events. Chic & Holland have more than 150 authorized
              retailers within 25 countries.
            </p>
          </div>

          {/* CHOICES Section */}
          <div
            ref={addToSectionsRef}
            className="flex flex-col items-center gap-2 text-center opacity-0 translate-y-10 transition-all duration-700 ease-out"
          >
            <h2 className="font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
              CHOICES
            </h2>
            <div className="w-full md:w-[40%] opacity-0 scale-90 transition-all duration-800 ease-out">
              <CustomizedImage
                src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/B406-38-PaperFinish.png"
                alt="Choices"
                unoptimized
                ref={addToImagesRef}
              />
            </div>
            <p className="mx-auto max-w-[80%] text-left font-adornstoryserif text-base leading-7 md:text-md 2xl:text-xl 3xl:text-2xl 4xl:text-2xl text-white normal-case tracking-normal font-premium-bold font-outline-bold opacity-0 translate-y-6 transition-all duration-700 ease-out delay-300">
              The captivating, delicate patterns of embellishment impose a
              breathtaking silhouette to the ineffable enchantment of hues in
              these handcrafted evening dresses. The label also has a bespoke
              range where you may create your own special day gown.
            </p>
          </div>

          {/* Image Grid */}
          <div
            ref={addToSectionsRef}
            className="grid grid-cols-1 gap-4 md:grid-cols-3 opacity-0"
          >
            {[
              "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image2.webp",
              "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image3.webp",
              "https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/image4.webp",
            ].map((src, index) => (
              <div
                key={index}
                className="opacity-0 translate-y-8 transition-all duration-600 ease-out"
                style={{ transitionDelay: `${index * 200}ms` }}
              >
                <CustomizedImage
                  src={src}
                  alt="Gallery image"
                  unoptimized
                  ref={addToImagesRef}
                  className="w-full h-full object-cover transform hover:scale-105 transition-transform duration-700 ease-out"
                />
              </div>
            ))}
          </div>

          {/* CRAFTMANSHIP Section */}
          <div
            ref={addToSectionsRef}
            className="flex flex-col items-center gap-2 text-center opacity-0 translate-y-10 transition-all duration-700 ease-out"
          >
            <h2 className="font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
              CRAFTMANSHIP
            </h2>
            <p className="mx-auto max-w-[80%] text-left font-adornstoryserif text-base leading-7 md:text-md 2xl:text-xl 3xl:text-2xl 4xl:text-2xl text-white normal-case tracking-normal font-premium-bold font-outline-bold opacity-0 translate-y-6 transition-all duration-700 ease-out delay-300">
              Each Season one-of-a-kind design is created with special care at
              their own Atelier. A single silhouette can take up to hundreds of
              man-hours to complete, ensuring delivery within the time frame.
              The design team themselves seeks out the high-quality raw
              materials and the proper implementation of each design.
            </p>
          </div>

          {/* Video Section */}
          <div
            ref={addToSectionsRef}
            className="opacity-0 scale-95 transition-all duration-900 ease-out"
          >
            <video
              ref={videoRef}
              src="https://ymts.blr1.cdn.digitaloceanspaces.com/chicandholland/Brand_New/chick&.mov"
              autoPlay
              muted
              loop
              playsInline
              controlsList="nodownload"
              className="m-0 h-full p-0 rounded-2xl shadow-2xl transform hover:scale-[1.02] transition-transform duration-700 ease-out"
            />
          </div>

          {/* OFFICIAL SPONSOR Section */}
          <div
            ref={addToSectionsRef}
            className="flex flex-col items-center gap-2 text-center opacity-0 translate-y-10 transition-all duration-700 ease-out"
          >
            <h2 className="font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl">
              OFFICIAL SPONSOR
            </h2>
            <p className="mx-auto max-w-[80%] text-left font-adornstoryserif text-base leading-7 md:text-md 2xl:text-xl 3xl:text-2xl 4xl:text-2xl text-white normal-case tracking-normal font-premium-bold font-outline-bold opacity-0 translate-y-6 transition-all duration-700 ease-out delay-300">
              Chic & Holland partnered with MISS WORLD NETHERLANDS and the MISS
              NETHERLANDS show to design gowns for participants and other
              celebrities.
            </p>
          </div>

          {/* Sponsors */}
          <div
            ref={addToSectionsRef}
            className="rounded-2xl overflow-hidden shadow-[0_0_15px_rgba(0,0,0,0.3)] floating-frame"
          >
            <SponserImages sponsor={sponsor} />
          </div>
        </div>
      </div>

      {/* DISCOVER THE AESTHETIC Sections */}
      <div className="space-y-12 py-8">
        <div className="bg-black py-2">
          <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] 3xl:text-3xl 4xl:text-5xl opacity-0 translate-y-6 transition-all duration-700 ease-out">
            DISCOVER THE AESTHETIC OF THE HOUSE
          </h2>
        </div>

        <div className="container space-y-24 bg-black text-white">
          {/* WORLD Section */}
          <div
            ref={addToSectionsRef}
            className="flex flex-col gap-8 md:flex-row md:justify-between opacity-0"
          >
            <div className="md:w-[50%] opacity-0 -translate-x-10 transition-all duration-800 ease-out">
              <CustomizedImage
                src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/41749c84-03e6-4a9e-894a-ecdfde95f634.jpeg"
                alt="Chic & Holland - Brand page images"
                unoptimized
                ref={addToImagesRef}
                className="w-full h-full object-cover transform hover:scale-105 transition-transform duration-700 ease-out rounded-2xl"
              />
            </div>
            <div className="flex flex-col gap-2 md:w-[70%] md:justify-center">
              <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] underline 3xl:text-3xl 4xl:text-5xl opacity-0 translate-y-4 transition-all duration-600 ease-out">
                WORLD
              </h2>
              {[
                "The Chic & Holland Design Team is at the core of the brand. They seek innovation, high-quality raw materials, and the proper implementation of each proposal., Each silhouette goes through multiple phases and includes a lot of fine details.",
                "The following sections make up the manufacturing process: Creative Design, Pattern Department, Sewing Unit, Handmade ornamentation Department, 1st Stage- Quality Control, End Stage, and Final Quality Control.",
                "In collaboration with the Sales and Production teams, the Design Department meticulously plans the design of every CHIC & HOLLAND Dress. All gowns are made in a specified and regulated manner, with care and love applied at all stages.",
              ].map((text, index) => (
                <p
                  key={index}
                  className="mx-auto max-w-[80%] text-left font-adornstoryserif text-base leading-7 md:text-md 2xl:text-xl 3xl:text-2xl 4xl:text-2xl text-white normal-case tracking-normal font-premium-bold font-outline-bold opacity-0 translate-y-6 transition-all duration-700 ease-out"
                  style={{ transitionDelay: `${300 + index * 150}ms` }}
                >
                  {text}
                </p>
              ))}
            </div>
          </div>

          {/* CLASSIC MEET CONTEMPORARY Section */}
          <div
            ref={addToSectionsRef}
            className="flex flex-col gap-8 md:flex-row md:justify-between opacity-0"
          >
            <div className="flex flex-col gap-8 md:w-[70%] md:justify-center order-2 md:order-1">
              <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] underline 3xl:text-3xl 4xl:text-5xl opacity-0 translate-y-4 transition-all duration-600 ease-out">
                CLASSIC MEET CONTEMPORARY
              </h2>
              {[
                "A quick look through the Chic and Holland collections reveals gown after gown meant to make a woman feel like a tall glass of beauty. The collection's color palette, extravagant detailing, and neckline or décolletage decorations are what make it modern.",
                "Chic and Holland woman is tough, elegant and sophisticated. She knows what she wants and dresses for herself. She believes in timeless elegance which can be worn to any event rather than trendy pieces which will only last a season or two. She cares about the quality and attention to detail.",
              ].map((text, index) => (
                <p
                  key={index}
                  className="mx-auto max-w-[80%] text-left font-adornstoryserif text-base leading-7 md:text-md 2xl:text-xl 3xl:text-2xl 4xl:text-2xl text-white normal-case tracking-normal font-premium-bold font-outline-bold opacity-0 translate-y-6 transition-all duration-700 ease-out"
                  style={{ transitionDelay: `${300 + index * 150}ms` }}
                >
                  {text}
                </p>
              ))}
            </div>
            <div className="md:w-[50%] opacity-0 translate-x-10 transition-all duration-800 ease-out order-1 md:order-2">
              <CustomizedImage
                src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/0C4A5447%20copy.jpg"
                alt="Chic & Holland - Brand page images"
                unoptimized
                ref={addToImagesRef}
                className="w-full h-full object-cover transform hover:scale-105 transition-transform duration-700 ease-out rounded-2xl"
              />
            </div>
          </div>

          {/* TIMELESS ELEGANCE Section */}
          <div
            ref={addToSectionsRef}
            className="flex flex-col gap-8 md:flex-row md:justify-between opacity-0"
          >
            <div className="md:w-[50%] opacity-0 -translate-x-10 transition-all duration-800 ease-out">
              <CustomizedImage
                src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/0C4A5809%20copy.jpg"
                alt="Chic & Holland - Brand page images"
                unoptimized
                ref={addToImagesRef}
                className="w-full h-full object-cover transform hover:scale-105 transition-transform duration-700 ease-out rounded-2xl"
              />
            </div>
            <div className="flex flex-col gap-8 md:w-[70%] md:justify-center">
              <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] underline 3xl:text-4xl 4xl:text-5xl opacity-0 translate-y-4 transition-all duration-600 ease-out">
                TIMELESS ELEGANCE
              </h2>
              {[
                "Our aim at Chic & Holland is to design and make dresses that will never go out of fashion - something that our discerning customers will be able to enjoy and appreciate for many years to come. The colour palette, the modern fabrics, the extravagant detailing and the classic silhouette when used together lend a very contemporary air to our collections.",
                "The Chic & Holland woman is tough, elegant and sophisticated. She knows what she wants and dresses for herself! She appreciates the finer details and the effort that goes into a high-quality handmade garment.",
              ].map((text, index) => (
                <p
                  key={index}
                  className="mx-auto max-w-[80%] text-left font-adornstoryserif text-base leading-7 md:text-md 2xl:text-xl 3xl:text-2xl 4xl:text-2xl text-white normal-case tracking-normal font-premium-bold font-outline-bold opacity-0 translate-y-6 transition-all duration-700 ease-out"
                  style={{ transitionDelay: `${300 + index * 150}ms` }}
                >
                  {text}
                </p>
              ))}
            </div>
          </div>

          {/* TRULY HANDMADE Section */}
          <div
            ref={addToSectionsRef}
            className="flex flex-col gap-8 md:flex-row md:justify-between opacity-0"
          >
            <div className="flex flex-col gap-8 md:w-[70%] md:justify-center order-2 md:order-1">
              <h2 className="text-center font-adornstoryserif text-2xl text-[#C9A39A] underline 3xl:text-4xl 4xl:text-5xl opacity-0 translate-y-4 transition-all duration-600 ease-out">
                TRULY HANDMADE
              </h2>
              {[
                "We consider ourselves guardians of this craft! In a world where things are increasingly being made by machines, we choose to painstakingly make all of our dresses by hand, at our own atelier - something very few brands can truly claim. The craftsmen who've chosen to work with us have been engaged in this craft for decades which helps us maintain the highest quality, consistently.",
                "Our dresses can take hundreds of man-hours to produce, because we'd want nothing but the very best for our customers.",
              ].map((text, index) => (
                <p
                  key={index}
                  className="mx-auto max-w-[80%] text-left font-adornstoryserif text-base leading-7 md:text-md 2xl:text-xl 3xl:text-2xl 4xl:text-2xl text-white normal-case tracking-normal font-premium-bold font-outline-bold opacity-0 translate-y-6 transition-all duration-700 ease-out"
                  style={{ transitionDelay: `${300 + index * 150}ms` }}
                >
                  {text}
                </p>
              ))}
            </div>
            <div className="md:w-[50%] opacity-0 translate-x-10 transition-all duration-800 ease-out order-1 md:order-2">
              <CustomizedImage
                src="https://chicandholland-space.ams3.cdn.digitaloceanspaces.com/brand_page/0C4A5674%20copy.jpg"
                alt="Chic & Holland - Brand page images"
                unoptimized
                ref={addToImagesRef}
                className="w-full h-full object-cover transform hover:scale-105 transition-transform duration-700 ease-out rounded-2xl"
              />
            </div>
          </div>
        </div>
      </div>

      {/* Enhanced Animations */}
      <style jsx>{`
        .animate-in {
          opacity: 1 !important;
          transform: translateY(0) !important;
          transform: translateX(0) !important;
          scale: 1 !important;
        }

        /* Staggered animations for child elements */
        .animate-in .opacity-0 {
          opacity: 1 !important;
        }

        .animate-in .translate-y-4,
        .animate-in .translate-y-6,
        .animate-in .translate-y-8,
        .animate-in .translate-y-10 {
          transform: translateY(0) !important;
        }

        .animate-in .-translate-x-10,
        .animate-in .translate-x-10 {
          transform: translateX(0) !important;
        }

        .animate-in .scale-90,
        .animate-in .scale-95 {
          transform: scale(1) !important;
        }

        /* Hover effects */
        .transform {
          transition: transform 0.7s cubic-bezier(0.19, 1, 0.22, 1);
        }

        /* Smooth scrolling */
        html {
          scroll-behavior: smooth;
        }

        /* Enhanced image hover effects */
        .CustomizedImage {
          transition: all 0.5s ease-in-out;
        }

        /* Gradient overlays for images */
        .image-container {
          position: relative;
          overflow: hidden;
        }

        .image-container::after {
          content: "";
          position: absolute;
          top: 0;
          left: 0;
          right: 0;
          bottom: 0;
          background: linear-gradient(
            45deg,
            rgba(201, 163, 154, 0.1) 0%,
            transparent 50%
          );
          opacity: 0;
          transition: opacity 0.5s ease;
        }

        .image-container:hover::after {
          opacity: 1;
        }

        /* Text glow effect */
        .font-premium-bold {
          text-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }

        /* Section background effects */
        section {
          background: linear-gradient(
            135deg,
            rgba(0, 0, 0, 0.8) 0%,
            rgba(0, 0, 0, 0.9) 100%
          );
        }
      `}</style>
    </div>
  );
}
