import Image from "next/image";
import Link from "next/link";

export default function Header() {
  return (
        <header className="w-full flex items-center w-full justify-between px-6 py-4">
            <div className="flex flex-row  items-center justify-between w-full">
                <Link href="/">
                    <Image 
                        src={"/logo.png"} 
                        alt="Logo" 
                        width={150} 
                        height={38} 
                        priority 
                        className="ml-15" 
                    />
                </Link>
                <div className="flex gap-15 items-center flex-row mr-15 text-[18px] font-bold">
                    <Link href="/find/career">
                        Find Career
                    </Link>
                    <Link href="/find/class">
                        Find Class
                    </Link>
                    <Link href="/browse">
                        Browse Class
                    </Link>
                </div>
            </div>
        </header>    
  );
}
