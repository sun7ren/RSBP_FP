import Image from 'next/image';

const CarouselPics = [
    'image-1.png', 'image-2.png', 'image-3.png', 'image-4.png', 'image-5.png', 
    'image-6.png'
];

export default function Carousel() {
  const renderImages = () => (
    CarouselPics.map((image, index) => (
      <li key={index} className="flex-shrink-0 w-50">
        <Image
          src={`/Carousel-Home/${image}`}
          alt={`Carousel image ${index + 1}`}
          width={240} 
          height={160}
          className="object-cover rounded-lg"
        />
      </li>
    ))
  );

  return (
    <div 
        className="w-full inline-flex flex-nowrap overflow-hidden 
                   [mask-image:linear-gradient(to_right,transparent_0,_black_128px,_black_calc(100%-200px),transparent_100%)] 
                dark:bg-white/5 rounded-lg py-4"
    >
      <ul className="flex items-center md:justify-start [&_li]:mx-8 [&_img]:max-w-none animate-infinite-scroll">
          {renderImages()}
      </ul>  
    
      <ul className="flex items-center md:justify-start [&_li]:mx-8 [&_img]:max-w-none animate-infinite-scroll" aria-hidden="true">
          {renderImages()}
      </ul>              
    </div>
  );
}