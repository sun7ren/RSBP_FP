import Header from "@/components/header"
import Carousel from "@/components/Carousel";

export default function Home() {
  return (
    <div className="bg-hero bg-cover bg-center min-h-screen">
      <Header/>
      <main className="flex flex-col justify-center mt-8">
        <div className="flex flex-row bg-white text-[#041E41] py-3 px-6 rounded-4xl max-w-lg mx-auto gap-3"> 
          <img src={"/brief.png"}
            width={20}
            height={20}
          />
          <h3>
            Your #1 Platform for IT Career Planning
          </h3>
        </div>
        <div className="mt-3 text-center font-semibold text-[55px] leading-[1.4] tracking-wide">
          <h1>A Knowledge-Based</h1>
          <h1>Recommender System for</h1>
          <h1>Informatics Career Planning</h1>
        </div>
        <p className="mt-3 mb-5 text-center">
          Turn your coursework into a career plan. Discover the role <br/>
          that matches your unique skills.
        </p>
        <div>
          <Carousel/>        
        </div>
      </main>
    </div>
  );
}
