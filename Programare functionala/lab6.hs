--1
data Fruct
  = Mar String Bool
  | Portocala String Int

ionatanFaraVierme = Mar "Ionatan" False
goldenCuVierme = Mar "Golden Delicious" True
portocalaSicilia10 = Portocala "Sanguinello" 10
cosFructe = [Mar "Ionatan" False,
            Portocala "Sanguinello" 10,
            Portocala "Valencia" 22,
            Mar "Golden Delicious" True,
            Portocala "Sanguinello" 15,
            Portocala "Moro" 12,
            Portocala "Tarocco" 3,
            Portocala "Moro" 12,
            Portocala "Valencia" 2,
            Mar "Golden Delicious" False,
            Mar "Golden" False,
            Mar "Golden" True]

--a
ePortocalaDeSicilia :: Fruct -> Bool
ePortocalaDeSicilia (Portocala "Tarocco" _)  = True
ePortocalaDeSicilia (Portocala "Moros" _)    = True
ePortocalaDeSicilia (Portocala "Sanguinello" _) = True
ePortocalaDeSicilia _ = False

--b
nrFelii :: Fruct -> Int
nrFelii (Portocala _ felii) = felii
nrFelii _ = 0

nrFeliiSicilia :: [Fruct] -> Int
nrFeliiSicilia [] = 0
nrFeliiSicilia (h:t)
    | ePortocalaDeSicilia h = nrFelii h + nrFeliiSicilia t 
    | otherwise = nrFeliiSicilia t

--c
areVierme :: Fruct -> Bool
areVierme (Mar _ True) = True
areVierme _ = False

nrMereViermi :: [Fruct] -> Int
nrMereViermi [] = 0
nrMereViermi (h:t)
    | areVierme h == True = 1 + nrMereViermi t
    | otherwise = nrMereViermi t

--2
type NumeA = String
type Rasa = String
data Animal = Pisica NumeA | Caine NumeA Rasa
    deriving Show
    
--a
vorbeste :: Animal -> String
vorbeste (Pisica _) = "Meow!"
vorbeste (Caine _ _) = "Woof!"


